// C++ includes
#include <algorithm>
#include <fstream>
#include <iostream>
#include <list>
#include <unordered_set>
#include <stdexcept>
#include <string>
#include <sstream>

// C includes
#include <cassert>

// Project includes
#include "boogie_io.h"

namespace horn_verification
{

	/*	
	template <class T>
	std::ostream & operator<<(std::ostream & out, const horn_constraint<T> & c)
	{

		out << "{";
	
		// Left-hand side
		unsigned i = 0;
		for (const auto & dp : c._premises)
		{
			
			if (i++ > 0)
			{
				out << ", ";
			}
			
			if (dp == nullptr)
			{
				out << "NULL";
			}
			else
			{
				out << *dp;
			}
			
		}
		
		// Right-hand side
		out << "} => ";
		
		if (c._conclusion == nullptr)
		{
			out << "NULL";
		}
		else
		{
			out << *c._conclusion;
		}
		
		return out;
		
	}
	*/
	
	
	void write_json(std::ostream & out, const attributes_metadata & metadata, const std::list<unsigned> & conjunction)
	{
		
		//
		// Write decision node on unique categorical attribute
		//
		out << "{\"attribute\":\"" << metadata.categorical_names()[0] << "\",\"cut\":0,\"classification\":true,\"children\":[";
		
		//
		// Write conjunction
		//
		for (const auto & c : conjunction)
		{
			
			// Output decision variable
			out << "{\"attribute\":\"" << metadata.int_names()[c] << "\",\"cut\":0,\"classification\":true,\"children\":[";
			
			// Output left node as false
			out << "{\"attribute\":\"\",\"cut\":0,\"classification\":false,\"children\":null},";
			
		}
		
		// Last true leaf
		out << "{\"attribute\":\"\",\"cut\":0,\"classification\":true,\"children\":null}";
		
		// Output closing brackets
		for (unsigned i = 0; i < conjunction.size(); ++i)
		{
			out << "]}";
		}
		out << "]}";
		
	}
	
	
	
	/**
	 * Checks whether a data point satisfies a conjunction.
	 *
	 * @param dp the data point
	 * @param conjunction the conjunction
	 *
	 * @return true if the data point satisfies the conjunction and false otherwise
	 */
	static bool satisfies(const datapoint<bool> & dp, const std::list<unsigned> & conjunction)
	{

		for (const auto & c : conjunction)
		{
			if (!dp._int_data[c])
			{
				return false;
			}
		}

		return true;

	}
	
	
	bool is_consistent(const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints, const std::list<unsigned> & conjunction)
	{
		
		//
		// Positive and negative data points
		//
		for (const auto & dp : datapoints)
		{
			
			// Positive
			if (dp._is_classified && dp._classification && !satisfies(dp, conjunction))
			{
				std::cerr << dp << " is rejected";
				throw std::runtime_error("Positive data point is rejected");
			}
			else if (dp._is_classified && !dp._classification && satisfies(dp, conjunction))
			{
				std::cerr << dp << " is accepted";
				throw std::runtime_error("Negative data point is accepted");
			}
			
		}
		
		//
		// Horn constraints
		//
		for (const auto & hc : horn_constraints)
		{
			
			// Check whether lhs is accepted
			bool lhs_acc = true;
			for (const auto & lhs_dp : hc._premises)
			{
				if (!satisfies(*lhs_dp, conjunction))
				{
					lhs_acc = false;
					break;
				}
			}
			
			if (lhs_acc)
			{
				
				if (hc._conclusion == nullptr)
				{
					std::cerr << "Horn constraint is not satisfied" << std::endl;
					throw std::runtime_error("Horn constraint is not satisfied");
				}
				else if (!satisfies(*hc._conclusion, conjunction))
				{
					std::cerr << "Horn constraint is not satisfied" << std::endl;
					throw std::runtime_error("Horn constraint is not satisfied");
				}
				
			}
			
			
			
		}
		
		return true;
		
	}
	
	
	std::list<unsigned> horndini(const attributes_metadata & metadata, const std::vector<datapoint<bool>> & datapoints, std::vector<horn_constraint<bool>> & horn_constraints)
	{
		
		//
		// Check that only one categorical attribute exists
		//
		if (metadata.categorical_names().size() != 1)
		{
			throw std::runtime_error("Exactly one categorical attribute required");
		}
		if (metadata.number_of_categories()[0] != 1)
		{
			throw std::runtime_error("Only one function can be synthesized");
		}
		
		
		//
		// Prepare results data structure
		//
		std::list<unsigned> predicates;
		for (unsigned i = 0; i < metadata.int_names().size(); ++i)
		{
			predicates.push_back(i);
		}

		
		//
		// Create list of positive data points
		//
		std::vector<const datapoint<bool> *> positive;
		for (const auto & dp : datapoints)
		{
			if (dp._is_classified && dp._classification)
			{
				positive.push_back(&dp);
			}
		}

		
		//
		// Knock out predicates that occur negative in a positive datapoint
		//
		do
		{

			// Process positive datapoints
			if (!positive.empty())
			{
				// For each predicate that is still there ...
				auto pred_it = predicates.begin();
				while (pred_it != predicates.end())
				{

					// Check whether predicates occurs negatively in a positively classfied datapoint
					bool found_false = false;
					for (const auto & dp : positive)
					{
						if (!dp->_int_data[*pred_it])
						{
							found_false = true;
							break;
						}
					}

					// Knock off if necessary
					if (found_false)
					{
						pred_it = predicates.erase(pred_it);
					}
					else
					{
						++pred_it;
					}

				}

				positive.clear();

			}
		
		
			// Add right-hand-side of Horn clause if all left-hand-sides satisfy the current conjunction
			auto horn_it = horn_constraints.begin();
			while (horn_it != horn_constraints.end())
			{

		
				// Check whether data point of left-hand-side is satisfied
				auto lhs_it = horn_it->_premises.begin();
				while (lhs_it != horn_it->_premises.end())
				{
					
					// Remove data point from lhs if it satisfies the conjunction
					if (satisfies(**lhs_it, predicates))
					{
						lhs_it = horn_it->_premises.erase(lhs_it);
					}
					else
					{
						++lhs_it;
					}
					
				}
		
				// If left-hand-side is empty, add right-hand-side to positive
				if (horn_it->_premises.empty())
				{
					
					if (horn_it->_conclusion == nullptr)
					{
						throw std::runtime_error("No consistent conjunction exists");
					}
					else
					{
						positive.push_back(horn_it->_conclusion);
						horn_it = horn_constraints.erase(horn_it);
					}
					
				}
				else
				{
					++ horn_it;
				}

			}
		
		} while (!positive.empty());
	

		return predicates;
	
	}
	
	
};


using namespace horn_verification;
 
int main(int argc, const char * argv[]) {
	
	//
	// Check command line arguments
	//
	if (argc != 2)
	{

		std::cout << "Invalid command line arguments." << std::endl;
		std::cout << "Usage: " << argv[0] << " file_stem" << std::endl;
		
		return EXIT_FAILURE;
		
	}
	
	
	//
	// Process command line arguments
	//
	
	// File stem
	auto file_stem = std::string(argv[1]);
	

	//
	// Run the learner and allow a graceful exit if something goes wrong
	//
	try 
	{
		
		//
		// Read input from files
		//
		
		// Read attribute meta data
		auto metadata = boogie_io::read_attributes_file(file_stem + ".attributes");
		
		// Read data points
		auto datapoints = boogie_io::read_data_file(file_stem + ".data", metadata);

		// Read horn constraints
		auto horn_constraints = boogie_io::read_horn_file(file_stem + ".horn", datapoints);


		//
		// Check input
		//
		if (metadata.int_names().size() + metadata.categorical_names().size() == 0)
		{
			throw std::runtime_error("No attributes defined");
		}
		
		
		//
		// Create pointer to datapoints
		//
		std::vector<datapoint<bool> *> datapoint_ptrs;
		datapoint_ptrs.reserve(datapoints.size());
		for (auto & dp : datapoints)
		{
			datapoint_ptrs.push_back(&dp);
		}
		
		
		//
		// Run Horndini
		//
		auto conjunction = horndini(metadata, datapoints, horn_constraints);
		
		
		//
		// DO DEBUG
		//
		
		// Read attribute meta data
		auto metadata_new = boogie_io::read_attributes_file(file_stem + ".attributes");
		
		// Read data points
		auto datapoints_new = boogie_io::read_data_file(file_stem + ".data", metadata);

		// Read horn constraints
		auto horn_constraints_new = boogie_io::read_horn_file(file_stem + ".horn", datapoints);
		
		assert (is_consistent(datapoints_new, horn_constraints_new, conjunction));
		
		
		//
		// Write JSON
		//
		std::ofstream outfile;
		outfile.open(file_stem + ".json", std::ofstream::out);
		
		// Check opening the file failed
		if (outfile.fail())
		{
			throw std::runtime_error("Error opening " + file_stem + ".json");
		}


		write_json(std::cout, metadata, conjunction);
		write_json(outfile, metadata, conjunction);		
		
		// Close file
		outfile.close();
		
		



		return EXIT_SUCCESS;

	}
	
	//
	// Handle exceptions (basically exit gracefully)
	//
	catch (const std::exception & ex)
	{
		std::cerr << ex.what() << std::endl;
		return EXIT_FAILURE;
	}
	catch (...)
	{
		std::cerr << "The learner crahsed due to an unknown reason" << std::endl;
		return EXIT_FAILURE;
	}
	
}
