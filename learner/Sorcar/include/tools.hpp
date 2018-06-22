#ifndef  __TOOLS_HPP__
#define  __TOOLS_HPP__

// C++ includes
#include <sstream>
#include <string>
#include <vector>


class string_tools
{
	
public:
	
	static std::string trim(const std::string & str)
	{
		size_t first = str.find_first_not_of(' ');
		size_t last = str.find_last_not_of(' ');
		return str.substr(first, (last - first + 1));
	}


	static std::vector<std::string> &split(const std::string &s, char delim, std::vector<std::string> &elems)
	{

		std::stringstream ss(s);
		std::string item;

		while (std::getline(ss, item, delim))
		{
			elems.push_back(item);
		}

		return elems;

	}


	static std::vector<std::string> split(const std::string & s, char delim)
	{

		std::vector<std::string> elems;
		split(s, delim, elems);
		return elems;

	}
	
};

#endif