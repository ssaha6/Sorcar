// C++ includes
#include <fstream>

// Project includes
#include "boogie_io.h"
#include "error.h"

#include <iostream>

namespace horn_verification
{

	unsigned int boogie_io::read_status_file(const std::string & filename)
	{
		
		// Open file for read operations
		std::ifstream infile(filename);

		// Check opening the file failed
		if (infile.fail())
		{
			throw boogie_io_error("Error opening " + filename);
		}
		
		// Read one line from file
		std::string line;
		if (!std::getline(infile, line))
		{
			throw boogie_io_error("Invalid file " + filename);
		}
		
		// Convert line into int
		unsigned int ret;
		std::stringstream ss(line);
		ss >> ret;
		
		if (ss.fail() || !ss.eof())
		{
			throw boogie_io_error("Unable to parse number invocations in line 1 of " + filename);
		}
		
		return ret;
		
	}



	attributes_metadata boogie_io::read_attributes_file(const std::string & filename)
	{
		
		// Open file for read operations
		std::ifstream infile(filename);

		// Check opening the file failed
		if (infile.fail())
		{
			throw boogie_io_error("Error opening " + filename);
		}
		
		
		// Variables
		attributes_metadata metadata;
		unsigned int cur_attribute_type = 0; // 0 = categorical; 1 = integer
		
		
		//
		// Read file line by line
		//
		std::string line;
		unsigned int line_nr = 0;
		while (std::getline(infile, line))
		{
			
			++line_nr;
			
			// Skip empty lines and comments
			if (line.empty() || line.compare(0, 1, "#") == 0)
			{
				continue;
			}
			
			// Split line at blanks, remove duplicate blanks
			auto split_line = split(line, ',');
			
			
			//
			// Categorical attribute
			//
			if (split_line[0] == "cat")
			{
				
				// Check correct format or categorical attribute
				if (split_line.size() != 3)
				{
					throw boogie_io_error("Invalid definition of categorical attribute in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				// Check correct order of attributes
				if (cur_attribute_type > 0)
				{
					throw boogie_io_error("Unexpected categorical attribute in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				// Parse number of categories
				std::stringstream ss(split_line[2]);
				unsigned int number_of_categories;
				ss >> number_of_categories;
				if (ss.fail() || !ss.eof())
				{
					throw boogie_io_error("Unable to parse number of categories in line " + std::to_string(line_nr) + " of " + filename);
				}
				else if (number_of_categories == 0)
				{
					throw boogie_io_error("Number of categories must not be 0 in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				// Add categorical attribute
				trim(split_line[1]);
				metadata.add_categorical_attribute(split_line[1], number_of_categories);
				
			}
			
			//
			// Integer attribute
			//
			else if (split_line[0] == "int")
			{
				
				// Check correct format or integer attribute
				if (split_line.size() != 2)
				{
					throw boogie_io_error("Invalid definition of integer attribute in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				// Check correct order of attributes
				if (cur_attribute_type < 1)
				{
					cur_attribute_type = 1;
				}
				
				// Add integer attribute
				trim(split_line[1]);
				metadata.add_int_attribute(split_line[1]);
				
			}
			
			//
			// Invalid attribute type
			//
			else
			{
				throw boogie_io_error("Unknown attribute type in line " + std::to_string(line_nr) + " of " + filename);
			}
			
			
		}
	
		// Close input file
		infile.close();

		return metadata;
	
	}
	

	std::vector<datapoint<bool>> boogie_io::read_data_file(const std::string & filename, const attributes_metadata & metadata)
	{
	
		// Open file for read operations
		std::ifstream infile(filename);

		// Check opening the file failed
		if (infile.fail())
		{
			throw boogie_io_error("Error opening " + filename);
		}
		
		
		// Some variables
		std::vector<datapoint<bool>> datapoints;
		unsigned number_of_datapoints = 0;
		
		
		//
		// Read file line by line
		//
		std::string line;
		unsigned int line_nr = 0;
		while (std::getline(infile, line))
		{
			
			++line_nr;
			
			// Skip empty lines and comments
			if (line.empty() || line.compare(0, 1, "#") == 0)
			{
				continue;
			}

			// Split line
			auto split_line = split(line, ',');
			
			// Check format of line
			if (split_line.size() != metadata.categorical_names().size() + metadata.int_names().size() + 1)
			{
				throw boogie_io_error("Invalid format of datapoint in line " + std::to_string(line_nr) + " of " + filename);
			}
			
			
			//
			// Get classification
			//
			bool is_labeled;
			bool label;
			const auto & last = split_line.back();
			
			if (last == "true")
			{
				is_labeled = true;
				label = true;
			}
			else if (last == "false")
			{
				is_labeled = true;
				label = false;
			}
			else if (last == "?")
			{
				is_labeled = false;
				label = false; // Unimportant
			}
			else
			{
				throw boogie_io_error("Invalid classification of datapoint in line " + std::to_string(line_nr) + " of " + filename);
			}
			
			
			//
			// Parse datapoint
			//
			datapoint<bool> dp(label, is_labeled);
			std::stringstream ss;
			auto it = split_line.begin();
			
			
			// Categorical arguments
			dp._categorical_data.reserve(metadata.categorical_names().size());
			for (std::size_t i = 0; i < metadata.categorical_names().size(); ++i)
			{
				
				// Parse categorical data
				ss.str(*it);
				ss.clear();
				unsigned int value;
				ss >> value;
				
				if (ss.fail() || !ss.eof())
				{
					throw boogie_io_error("Unable to parse categorical data in line " + std::to_string(line_nr) + " of " + filename);
				}
				else if (value >= metadata.number_of_categories()[i])
				{
					throw boogie_io_error("Invalid category value in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				// Add data
				dp._categorical_data.push_back(value);
				
				// Advance iterator
				++it;
				
			}
			
			
			// Integer attributes
			dp._int_data.reserve(metadata.int_names().size());
			for (std::size_t i = 0; i < metadata.int_names().size(); ++i)
			{
				
				// Parse categorical data
				ss.str(*it);
				ss.clear();
				int value;
				ss >> value;
				
				if (ss.fail() || !ss.eof())
				{
					throw boogie_io_error("Unable to parse integer data in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				// Add data
				dp._int_data.push_back(value);
				
				// Advance iterator
				++it;
				
			}
			
			
			// Check data point
			if (dp._categorical_data.size() != metadata.categorical_names().size())
			{
				throw boogie_io_error("Data point has incorrect number of categorical attributes in line " + std::to_string(line_nr) + " of " + filename);
			}
			if (dp._int_data.size() != metadata.int_names().size())
			{
				throw boogie_io_error("Data point has incorrect number of integer attributes in line " + std::to_string(line_nr) + " of " + filename);
			}
		
		
			// Add data point
			dp._identifier = number_of_datapoints++;
			datapoints.push_back(std::move(dp)); // No use of dp after this point
			
		}
	
		
		// Close input file
		infile.close();
	
		return datapoints;
	
	}
	
	std::vector<horn_constraint<bool>> boogie_io::read_horn_file(const std::string & filename, std::vector<datapoint<bool>> & datapoints)
	{
		
		// Define symbol for empty head
		auto empty_head = "_";
		
		// Open file for read operations
		std::ifstream infile(filename);

		// Check opening the file failed
		if (infile.fail())
		{
			throw boogie_io_error("Error opening " + filename);
		}
		
		
		// Some variables
		std::vector<horn_constraint<bool>> horn_constraints;
		auto dpts_size = datapoints.size();
		
		//
		// Read file line by line
		//
		std::string line;
		unsigned int line_nr = 0;
		while (std::getline(infile, line))
		{
			
			++line_nr;
			
			// Skip empty lines and comments
			if (line.empty() || line.compare(0, 1, "#") == 0)
			{
				continue;
			}
		
		
			// Split line
			auto split_line = split(line, ',');

			// Check format of line
			if (split_line.size() < 2)
			{
				throw boogie_io_error("Invalid format of horn constraint in line " + std::to_string(line_nr) + " of " + filename);
			}

		
			// Parse premises
			std::vector <datapoint<bool> *> premises;
			premises.reserve(split_line.size() - 1);
			std::stringstream ss;
			for (std::size_t i = 0; i < split_line.size() - 1; ++i)
			{
				
				ss.str(split_line[i]);
				ss.clear();
				std::size_t index;
				ss >> index;
				
				if (ss.fail() || !ss.eof())
				{
					throw boogie_io_error("Unable to parse horn constraint in line " + std::to_string(line_nr) + " of " + filename);
				}
				if (index >= dpts_size)
				{
					throw boogie_io_error("Horn constraint out of bounds in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				//std::cout << index << " ";
				
				premises.push_back(&datapoints[index]);
				
			}
		
			// Parse consequence
			//std::cout << " => ";
			datapoint<bool> * consequence = nullptr;
			if (split_line.back() != empty_head)
			{
				
				ss.str(split_line.back());
				ss.clear();
				std::size_t index;
				ss >> index;
				
				if (ss.fail() || !ss.eof())
				{
					throw boogie_io_error("Unable to parse horn constraint in line " + std::to_string(line_nr) + " of " + filename);
				}
				if (index >= dpts_size)
				{
					throw boogie_io_error("Horn constraint out of bounds in line " + std::to_string(line_nr) + " of " + filename);
				}
				
				//std::cout << index;
				
				consequence = &datapoints[index];
				
			}
		
			horn_constraints.push_back(horn_constraint<bool>(premises, consequence));
			//std::cout << std::endl;
		
		}
		
		
		// Close input file
		infile.close();
	
		return horn_constraints;
		
	}
	
	/*
	void boogie_io::write_json_file(const std::string & filename, decision_tree & tree, const attributes_metadata & metadata)
	{
		
		// Open file
		std::ofstream outfile;
		outfile.open(filename, std::ofstream::out);
		
		// Check opening the file failed
		if (outfile.fail())
		{
			throw boogie_io_error("Error opening " + filename);
		}
		
		// Create visitor and write output
		json_visitor visitor(metadata, outfile);
		tree.accept(visitor);
		
		// Close file
		outfile.close();
		
	}
	*/

}; // End namespace horn_verification
