#ifndef __BOOGIE_IO_HPP__
#define __BOOGIE_IO_HPP__


// C++ include
#include <fstream>
#include <list>
#include <ostream>
#include <set>
#include <stdexcept>
#include <string>
#include <sstream>
#include <vector>


// C includes
#include <cassert>


// Project includes
#include "datapoint.hpp"
#include "tools.hpp"


struct names
{

	std::string pc;

	std::vector<std::string> attributes;

	friend std::ostream & operator<<(std::ostream & out, const names & n)
	{

		out << "program counter: '" << n.pc << "'" << std::endl << "Attributes" << std::endl;

		for (unsigned int i = 0; i < n.attributes.size(); ++i)
		{

			out << "'" << n.attributes[i] << "'";
			if (i < n.attributes.size() - 1)
			{
				out << std::endl;
			}

		}

		return out;

	}

};


names read_names_file(const std::string & filename)
{

	names variables;

	// Open file
	std::ifstream infile(filename);

	// Auxiliary variables for parsing
	unsigned int line_nr = 0;
	std::string func_name = ""; // Stores name of function

	std::string line;
	while (std::getline(infile, line))
	{

		if (line.empty())
		{
			continue;
		}

		// First line is name of function, store it
		if (line_nr == 0)
		{

			if (line.back() == '.')
			{
				func_name = line.substr(0, line.size() - 1);
			}
			else
			{
				func_name = line;
			}

		}

		else
		{

			// Identify name before colon
			std::string name = string_tools::trim(line.substr(0, line.find(":")));

			if (name != func_name)
			{
				if (line_nr == 1)
				{
					variables.pc = name;
				}
				else
				{
					variables.attributes.push_back(name);
				}

			}

		}

		++line_nr;

	}

	infile.close();

	return variables;

}


void read_data_file(const std::string & filename, std::vector<datapoint> & datapoints)
{

	// Open file
	std::ifstream infile(filename);

	std::string line;
	while (std::getline(infile, line))
	{

		if (line.empty())
		{
			continue;
		}

		const auto split_line = string_tools::split(line, ',');
		assert(split_line.size() - 2 > 0);

		// Create boolean array
		std::vector<bool> dp(split_line.size() - 2);
		for (unsigned int i = 1; i < split_line.size() - 1; ++i)
		{
			dp[i - 1] = split_line[i] == "0" ? false : true;
		}

		if (split_line[split_line.size() - 1] == "true")
		{
			datapoints.push_back(datapoint(dp, classification::POSITIVE));
		}
		else if (split_line[split_line.size() - 1] == "false")
		{
			datapoints.push_back(datapoint(dp, classification::NEGATIVE));
		}
		else if (split_line[split_line.size() - 1] == "?")
		{
			datapoints.push_back(datapoint(dp, classification::UNDEFINED));
		}
		else
		{
			throw std::exception();
		}

	}


	// Close file
	infile.close();

}


void read_implications_file(const std::string & filename, std::vector<std::pair<unsigned int, unsigned int>> & implications)
{

	// Open file
	std::ifstream infile(filename);

	std::string line;
	while (std::getline(infile, line))
	{

		if (line.empty())
		{
			continue;
		}

		const auto split_line = string_tools::split(line, ' ');
		assert(split_line.size() == 2);

		// Parse antecendent
		std::stringstream s1(split_line[0]);
		unsigned int i1 = 0;
		s1 >> i1;

		// Parse consequent
		std::stringstream s2(split_line[1]);
		unsigned int i2 = 0;
		s2 >> i2;

		implications.push_back(std::pair<unsigned int, unsigned int>(i1, i2));

	}

	// Close file
	infile.close();

}


// Returns 0 if file not existing
unsigned int read_init_size_file(const std::string & filename)
{

	// Read first line and assume its an integer
	std::ifstream infile(filename);

	std::string line;
	if (!std::getline(infile, line))
	{
		return 0;
	}
	else
	{
		return std::stoi(line);
	}

}


void __to_JSON(std::ostream & out, const names & names, std::set<int>::const_iterator & it, const std::set<int>::const_iterator & end)
{

	if (it == end)
	{
		out << "{\"attribute\":\"\",\"cut\":0,\"classification\":true,\"children\":null}";
	}
	else
	{

		out << "{\"attribute\":\"" << names.attributes[*it] << "\",\"cut\":0,\"classification\":0,\"children\":[";
		out << "{\"attribute\":\"\",\"cut\":0,\"classification\":false,\"children\":null},";
		__to_JSON(out, names, ++it, end);
		out << "]}";

	}

}


void to_JSON(std::ostream & out, const names & names, const std::set<int> & conjunction)
{

	out << "{\"attribute\":\"" << names.pc << "\",\"cut\":0,\"classification\":0,\"children\":[";

	auto it = conjunction.cbegin();
	__to_JSON(out, names, it, conjunction.cend());

	out << ",{\"attribute\":\"\",\"cut\":0,\"classification\":true,\"children\":null}";
	out << "]}";

}


bool is_first_round(const std::string & filename, size_t current_number_of_labeled_datapoints)
{

	bool read_prev_successful = true;

	// Read number of datapoint in previous iteration
	std::ifstream size_file;
	size_file.open(filename);

	// Read first entry from file
	size_t prev_number_of_datapoints = 0;
	if (!(size_file >> prev_number_of_datapoints))
	{
		read_prev_successful = false;
	}

	size_file.close();

	return !read_prev_successful || current_number_of_labeled_datapoints <= prev_number_of_datapoints;

}


void write_prev_data_size_file(const std::string & filename, size_t size)
{

	std::ofstream outfile;
	outfile.open(filename, std::ofstream::out);
	outfile << size;
	outfile.close();

}


size_t read_round_file(const std::string & filename)
{
	
	// Read number of datapoint in previous iteration
	std::ifstream round_file;
	round_file.open(filename);
	
	size_t round = 0;
	round_file >> round;
	
	round_file.close();
	
	return round;
	
}


void write_round_file(const std::string & filename, size_t current_round)
{

	std::ofstream outfile;
	outfile.open(filename, std::ofstream::out);

	outfile << current_round;

	outfile.close();

}


std::set<int> read_R_file(const std::string & filename)
{

	std::set<int> relevant_predicates;

	// Read from file
	std::ifstream R_file;
	R_file.open(filename);

	int predicate;
	while (R_file >> predicate)
	{
		relevant_predicates.insert(predicate);
	}

	R_file.close();

	return relevant_predicates;

}


void write_R_file(const std::string & filename, const std::set<int> & relevant_predicates)
{

	std::ofstream outfile;
	outfile.open(filename, std::ofstream::out);

	size_t i = 0;
	for (const auto & p : relevant_predicates)
	{
		outfile << p << (i++ < relevant_predicates.size() - 1 ? " " : "");
	}

	outfile.close();

}


#endif