#ifndef __HOUDINI_HPP__
#define __HOUDINI_HPP__

// C++ includes
//#include <algorithm>
#include <list>
#include <set>
#include <vector>

// C includes
//#include <cassert>

// Project includes
#include "datapoint.hpp"




class houdini
{

public:

	/**
	 * Checks whether a data point satisfies a conjunction.
	 *
	 * @param dp the data point
	 * @param conjunction the conjunction
	 *
	 * @return true if the data point satisfies the conjunction and false otherwise
	 */
	static bool satisfies(const datapoint & dp, const std::set<int> & conjunction)
	{

		for (const auto & c : conjunction)
		{
			if (!dp.data[c])
			{
				return false;
			}
		}

		return true;

	}

	
	/*
	 * Runs Houdini algorithm to learn a conjunction that is consistent with the set of positive examples and implications.
	 * The method runs the Houdini algorithm relative to the \p predicates parameter and modifies this set.
	 */
	static void run(const std::vector<datapoint> & datapoints, const std::vector<std::pair<unsigned int, unsigned int>> & implications, std::set<int> & predicates)
	{

		//
		// Initialization
		//

		// Create list of all positive and negative datapoints
		std::vector<const datapoint *> positive;
		positive.reserve(datapoints.size());
		for (const auto & dp : datapoints)
		{
			if (dp.cl == classification::POSITIVE)
			{
				positive.push_back(&dp);
			}
		}

		// Create list of references to implications
		std::list<const std::pair<unsigned int, unsigned int> *> implication_pointers;
		for (const auto & implication : implications)
		{
			implication_pointers.push_back(&implication);
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
						if (!dp->data[*pred_it])
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

			// Add right-hand-side of implications if left-hand-side satisfies conjunction of remaining attributes
			auto impl_it = implication_pointers.begin();
			while (impl_it != implication_pointers.end())
			{

				// Add right-hand-side if left-hand-side satisfies
				if (satisfies(datapoints[(*impl_it)->first], predicates))
				{
					positive.push_back(&datapoints[(*impl_it)->second]);
					impl_it = implication_pointers.erase(impl_it);
				}
				else
				{
					++impl_it;
				}

			}

		} while (!positive.empty());

	}

};

#endif