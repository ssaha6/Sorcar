#ifndef __OPTIONS_HPP__
#define __OPTIONS_HPP__

// C++ includes
#include <fstream>
#include <ostream>
#include <string>
#include <sstream>
#include <stdexcept>
#include <vector>

// Project includes
#include "tools.hpp"


class options
{
	
	protected:
	
	options()
		: _algorithm(algorithm::SORCAR_ALL), _houdini_first_round(false), _alternate_sorcar_houdini(false), _reset_R(false)
	{
		// Nothing
	}
	
	
public:

	// Indicates what to do when processing negative examples (and implications)
	enum algorithm
	{
		HOUDINI, // Plain Houdini
		SORCAR_ALL, // Sorcar that adds all predicates that are true
		SORCAR_GREEDY, // Sorcar that adds as little predicates that are true as possible in a greedy manner
		SORCAR_SAT // Sorcar with SAT solver to minimize the predicates added
	};

	algorithm _algorithm;
	
	bool _houdini_first_round;
	
	bool _alternate_sorcar_houdini;
	
	bool _reset_R;
	
	
	static options read_options_file(const std::string & filename)
	{
		
		// Aux variables
		bool parsed_houdini_first_round = false;
		bool parsed_alternate_sorcar_houdini = false;
		bool parsed_reset_R = false;
		bool parsed_algorithm = false;
		options opt;
		
		
		// Open file
		std::ifstream infile(filename);

		// Auxiliary variables for parsing
		unsigned int line_nr = 0;

		// Parse file
		std::string line;
		while (std::getline(infile, line))
		{

			++line_nr;
	
			// Skip empty lines and comments
			if (line.empty() || line.front() == '#')
			{
				continue;
			}
			
			// Split on "="
			auto splitted_line = string_tools::split(line, '=');
			
			if (splitted_line.size() != 2)
			{
				throw std::runtime_error("Error parsing line " + std::to_string(line_nr) + " of " + filename);
			}
			
			auto option = string_tools::trim(splitted_line[0]);
			auto arg = string_tools::trim(splitted_line[1]);

			
			// Parse houdini algorithm option
			if (option == "algorithm")
			{
				
				parsed_algorithm = true;
				
				if (arg == "houdini")
				{
					opt._algorithm = algorithm::HOUDINI;
				}
				else if (arg == "sorcar_all")
				{
					opt._algorithm = algorithm::SORCAR_ALL;
				}
				else if (arg == "sorcar_greedy")
				{
					opt._algorithm = algorithm::SORCAR_GREEDY;
				}
				else if (arg == "sorcar_sat")
				{
					opt._algorithm = algorithm::SORCAR_SAT;
				}
				else
				{
					throw std::runtime_error("Error parsing option argument in line " + std::to_string(line_nr) + " of " + filename);
				}
				
			}
			
			
			// Parse houdini first round option
			else if (option == "houdini_first_round")
			{
				
				parsed_houdini_first_round = true;
				
				if (arg == "true")
				{
					opt._houdini_first_round = true;
				}
				else if (arg == "false")
				{
					opt._houdini_first_round = false;
				}
				else
				{
					throw std::runtime_error("Error parsing option argument in line " + std::to_string(line_nr) + " of " + filename);
				}
				
			}
			
			
			// Parse reset R option
			else if (option == "reset_R")
			{
				
				parsed_reset_R = true;
				
				if (arg == "true")
				{
					opt._reset_R = true;
				}
				else if (arg == "false")
				{
					opt._reset_R = false;
				}
				else
				{
					throw std::runtime_error("Error parsing option argument in line " + std::to_string(line_nr) + " of " + filename);
				}
				
			}
			
			
			// Parse alternate houdini sorcar option
			else if (option == "alternate")
			{
				
				parsed_alternate_sorcar_houdini = true;
				
				if (arg == "true")
				{
					opt._alternate_sorcar_houdini = true;
				}
				else if (arg == "false")
				{
					opt._alternate_sorcar_houdini = false;
				}
				else
				{
					throw std::runtime_error("Error parsing option argument in line " + std::to_string(line_nr) + " of " + filename);
				}
				
			}
		
			// Unknown option
			else
			{
				throw std::runtime_error("Unknown option in line " + std::to_string(line_nr) + " of " + filename);
			}

		
		}

		
		infile.close();

		
		// Check if all options have been set
		if (!(parsed_alternate_sorcar_houdini && parsed_houdini_first_round && parsed_reset_R && parsed_algorithm))
		{
			std::cerr << "Warning: not all options have been set (defaults were used)" << std::endl;
			//throw std::runtime_error("Not all options have been set");
		}
	
		
		return opt;
		
	}
	
	
	friend std::ostream & operator<<(std::ostream & out, const options & opt)
	{
		
		out << "[";
		out << "algorithm=";
		switch (opt._algorithm)
		{
			case HOUDINI:
				out << "houdini";
				break;
				
			case SORCAR_ALL:
				out << "sorcar_all";
				break;
				
			case SORCAR_GREEDY:
				out << "sorcar_greedy";
				break;
				
			case SORCAR_SAT:
				out << "sorcar_sat";
				break;
		}
		out << "; houdini_first_round=" << (opt._houdini_first_round ? "true" : "false");
		out << "; reset_R=" << (opt._reset_R ? "true" : "false");
		out << "; alternate=" << (opt._alternate_sorcar_houdini ? "true" : "false");
		out << "]";
		
		return out;
		
	}
	
};


#endif