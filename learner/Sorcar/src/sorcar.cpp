// C++ includes
#include <fstream>
#include <iostream>
//#include <limits>
#include <stdexcept>

// Project includes
#include "boogie_io.hpp"
#include "houdini.hpp"
#include "options.hpp"
#include "sorcar.hpp"
// #include "sorcar_sat.hpp"



bool is_consistent(const std::vector<datapoint> & datapoints, const std::vector<std::pair<unsigned int, unsigned int>> & implications, const std::set<int> & conjunction)
{

	// Check positive and negative
	size_t i = 0;
	for (const auto & dp : datapoints)
	{

		if (dp.cl == classification::POSITIVE && !sorcar::satisfies(dp, conjunction))
		{
			throw std::runtime_error("Positive datapoint " + std::to_string(i) + " does not satisfy conjunction");
			return false;
		}
		else if (dp.cl == classification::NEGATIVE && sorcar::satisfies(dp, conjunction))
		{
			throw std::runtime_error("Negative datapoint " + std::to_string(i) + " does satisfy conjunction");
			return false;
		}

		++i;

	}

	// Check implications
	i = 0;
	for (const auto & impl : implications)
	{

		if (sorcar::satisfies(datapoints[impl.first], conjunction) && !sorcar::satisfies(datapoints[impl.second], conjunction))
		{
			throw std::runtime_error("Implication " + std::to_string(i) + " does not satisfy conjunction (lhs: " + std::to_string(sorcar::satisfies(datapoints[impl.first], conjunction)) + "; rhs: " + std::to_string(sorcar::satisfies(datapoints[impl.second], conjunction)) + ")");
			return false;
		}

		++i;

	}

	return true;

}



int main(int argc, const char * argv[])
{

	//
	// Check program arguments
	//
	if (argc < 2)
	{
		std::cerr << "Invalid arguments; requires one argument, the file stem" << std::endl;
		return EXIT_FAILURE;
	}

	std::string filestem(argv[argc - 1]);


	//
	// Read options from file
	//
	
	auto opt = options::read_options_file("./sorcar.options");

	
	
	//
	// Read input
	//

	// Read name file
	const auto names = read_names_file(filestem + ".names");

	// Read data file
	std::vector<datapoint> datapoints;
	read_data_file(filestem + ".data", datapoints);
	size_t number_of_labeled_datapoints = 0;
	for_each(datapoints.cbegin(), datapoints.cend(), [&number_of_labeled_datapoints](const datapoint & dp){ if (dp.cl != classification::UNDEFINED) ++number_of_labeled_datapoints; });

	// Read implications file
	std::vector<std::pair<unsigned int, unsigned int>> implications;
	read_implications_file(filestem + ".implications", implications);

	// Get current round
	size_t current_round = 0;
	if (!is_first_round(filestem + ".prev_data_size", number_of_labeled_datapoints + implications.size()))
	{
		current_round = read_round_file(filestem + ".round");
		assert(current_round > 0);
	}
	
	// Relevant predicates
	std::set<int> relevant_predicates;
	if (!opt._reset_R && current_round > 0)
	{
		relevant_predicates = read_R_file(filestem + ".R");
	}
	

	std::cerr << std::endl << "========================================" << std::endl;
	std::cerr << "|" << std::endl;
	std::cerr << "|  ROUND " << current_round << std::endl;
	std::cerr << "|  " << opt << std::endl;
	std::cerr << "|  datapoint.size()=" << datapoints.size() << "; implications.size()=" << implications.size() << std::endl;
	std::cerr << "|" << std::endl << "========================================" << std::endl;
	

	
	
	//
	// Learn
	//
	
	// Create a list of all available predicates
	std::set<int> predicates;
	for (size_t i = 0; i < names.attributes.size(); ++i)
	{
		predicates.insert(predicates.end(), i);
	}	

	
	//
	// Run Houdini
	//
	houdini::run(datapoints, implications, predicates);

	
	//
	// Run appropriate Sorcar algorithm (if necessary)
	//
	
	// Houdini only
	if (opt._algorithm == options::algorithm::HOUDINI || (opt._houdini_first_round && current_round == 0) || (opt._alternate_sorcar_houdini && current_round % 2 == 0))
	{
		std::cerr << "Running Houdini" << std::endl;
		// Relevant predicates is what we output later, so if we don't want to reduce predicates, we simply copy the result of Houdini
		relevant_predicates = predicates;
	}
	
	// Sorcar all
	else if (opt._algorithm == options::algorithm::SORCAR_ALL)
	{
		std::cerr << "Running Sorcar All" << std::endl;
		sorcar::reduce_predicates_all(datapoints, implications, predicates, relevant_predicates);
		
	}
	
	// Sorcar greedy
	else if (opt._algorithm == options::algorithm::SORCAR_GREEDY)
	{
		std::cerr << "Running Sorcar Greedy" << std::endl;
		sorcar::reduce_predicates_greedy(datapoints, implications, predicates, relevant_predicates);
	}
	
	// Sorcar sat
	else if (opt._algorithm == options::algorithm::SORCAR_SAT)
	{
		std::cerr << "Running Sorcar SAT" << std::endl;
		// sorcar_sat::reduce_predicates_sat(datapoints, implications, predicates, relevant_predicates, names.attributes.size());
	}
	
	// Logic error (cannot happen)
	else
	{
		throw std::runtime_error("Logic error");
	}
	

	//
	// Check result
	//
	assert(is_consistent(datapoints, implications, relevant_predicates));
#ifndef NDEBUG
	std::cerr << "CONJUNCTION: ";
	for_each(relevant_predicates.cbegin(), relevant_predicates.cend(), [](int p){ std::cerr << p << " "; });
	std::cerr << std::endl;
	std::cerr << "CONSISTENT: " << is_consistent(datapoints, implications, relevant_predicates) << std::endl;
#endif
	

	//
	// Output
	//
	
	// JSON
	std::ofstream outfile;
	outfile.open(filestem + ".json", std::ofstream::out);
	to_JSON(outfile, names, relevant_predicates);
	//to_JSON(std::cout, names, predicates);
	outfile.close();

	// Update prev_data_size file and round file
	write_prev_data_size_file(filestem + ".prev_data_size", number_of_labeled_datapoints + implications.size());
	write_round_file(filestem + ".round", current_round + 1);

	// Update R file if used
	if (!opt._reset_R)
	{
		write_R_file(filestem + ".R", relevant_predicates);
	}
	
	
	//
	// End
	//
	
	return EXIT_SUCCESS;

}