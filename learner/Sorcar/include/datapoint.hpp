#ifndef __DATAPOINT_HPP__
#define __DATAPOINT_HPP__

// C++ includes
#include <list>
#include <ostream>
#include <vector>


enum classification
{
	POSITIVE, NEGATIVE, UNDEFINED
};


class datapoint
{

public:

	std::vector<bool> data;
	classification cl;

	datapoint(const std::vector<bool> & data, const classification & cl) : data(data), cl(cl)
	{
		// Nothing
	}

	bool satisfies_conjunction(const std::list<int> & conjunction) const
	{

		for (const auto & c : conjunction)
		{
			if (!data[c])
			{
				return false;
			}
		}

		return true;

	}

	friend std::ostream & operator<<(std::ostream & out, const datapoint & dp)
	{

		out << "[";
		for (unsigned int i = 0; i < dp.data.size(); ++i)
		{
			out << dp.data[i] << (i < dp.data.size() - 1 ? "," : "");
		}
		out << "]: " << (dp.cl == classification::POSITIVE ? "+" : (dp.cl == classification::NEGATIVE ? "-" : "?"));

		return out;

	}

};


std::ostream & operator <<(std::ostream & out, const std::vector<datapoint> & datapoints)
{
	
	for (const auto & dp : datapoints)
	{
		out << dp << std::endl;
	}

	return out;

}


#endif