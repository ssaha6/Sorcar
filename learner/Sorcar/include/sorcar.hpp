#ifndef __SORCAR_HPP__
#define __SORCAR_HPP__

// C++ includes
#include <algorithm>
#include <set>
#include <vector>

// C includes
#include <cassert>

// Project includes
#include "datapoint.hpp"

class sorcar
{

public:

	/*
	 * Checks whether a datapoint satisfies a conjunction given as set
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
	 * This version is the original implementation.
	 * IT MIGHT BE BUGGY
	 */
	static void reduce_predicates_old(const std::vector<datapoint> & datapoints, const std::vector<std::pair<unsigned int, unsigned int>> & implications, const std::set<int> & predicates, std::set<int> & relevant_predicates)
	{


		// Clean R from elements not in X
		auto rel_pred_it = relevant_predicates.begin();
		while (rel_pred_it != relevant_predicates.end())
		{
			if (predicates.count(*rel_pred_it) == 0)
			{
				rel_pred_it = relevant_predicates.erase(rel_pred_it);
			}
			else
			{
				++rel_pred_it;
			}
		}


		// Process negative examples
		for (const auto & dp : datapoints)
		{

			// If negative satisfies, add all its 0 entries as relevant attributes
			if (dp.cl == classification::NEGATIVE && satisfies(dp, relevant_predicates))
			{
				for (const auto & a : predicates)
				{
					if (!dp.data[a])
					{
						relevant_predicates.insert(a);
					}
				}

			}

		}


		// Create list of references to implications
		std::list<const std::pair<unsigned int, unsigned int> *> implication_pointers;
		for (const auto & implication : implications)
		{
			implication_pointers.push_back(&implication);
		}

		// Process implications
		bool done;
		do
		{

			done = true;

			// Go through all implications
			auto impl_it = implication_pointers.begin();
			while (impl_it != implication_pointers.end())
			{

				const auto & lhs = datapoints[(*impl_it)->first];
				const auto & rhs = datapoints[(*impl_it)->second];

				// Check whether implication is violated satisfies relavant predicates
				if (satisfies(lhs, relevant_predicates) && !satisfies(rhs, relevant_predicates))
				{

					// Add all 0 entries of left-hand-side that are in X
					for (const auto & a : predicates)
					{
						if (!lhs.data[a])
						{
							relevant_predicates.insert(a);
						}
					}

					// Remove implication
					impl_it = implication_pointers.erase(impl_it);
					done = false;

				}
				else
				{
					++impl_it;
				}

			}

		} while (!done);

	}


	static void reduce_predicates_all(const std::vector<datapoint> & datapoints, const std::vector<std::pair<unsigned int, unsigned int>> & implications, const std::set<int> & X, std::set<int> & R)
	{
		
		//
		// R = R \cap X
		//
		auto it_R = R.cbegin();
		while (it_R != R.cend())
		{
			
			// Element is not in X, thus remove from R
			if (X.find(*it_R) == X.end())
			{
				it_R = R.erase(it_R);
			}
			// Element is in X
			else
			{
				++it_R;
			}
			
		}
		
		//
		// X_minus_R = X \ R
		//
		auto X_minus_R = std::set<int>();
		for_each(X.cbegin(), X.cend(), [&X_minus_R, R](int p){ if (R.find(p) == R.end()) X_minus_R.insert(p); });
		
		
		//
		// Process negative examples
		//
		for (const auto & dp : datapoints)
		{

			// If negative example satisfies the current conjunction, add all its 0-entries to the conjunction
			if (dp.cl == classification::NEGATIVE && satisfies(dp, R))
			{

				auto size_before = R.size();
				auto it_XmR = X_minus_R.cbegin();
				
				while (it_XmR != X_minus_R.cend())
				{

					if (!dp.data[*it_XmR])
					{
						R.insert(*it_XmR);
						it_XmR = X_minus_R.erase(it_XmR);
					}
					else
					{
						++it_XmR;
					}

				}
				
				assert (size_before < R.size());
				
			}
			
		}
		
		
		//
		// Process implications
		//
		for (const auto & impl : implications)
		{
			
			// If implication is not consistent with the conjunction, add all 0-entries of the left-hand-side to the conjunction
			if (satisfies(datapoints[impl.first], R) && !satisfies(datapoints[impl.second], R))
			{
				
				auto size_before = R.size();
				auto & lhs = datapoints[impl.first];
				auto it_XmR = X_minus_R.cbegin();
				
				while (it_XmR != X_minus_R.cend())
				{
					
					if (!lhs.data[*it_XmR])
					{
						R.insert(*it_XmR);
						it_XmR = X_minus_R.erase(it_XmR);
					}
					else
					{
						++it_XmR;
					}
					
				}
				
				assert (size_before < R.size());
				
			}
			
		}
		
	}


	static void reduce_predicates_greedy(const std::vector<datapoint> & datapoints, const std::vector<std::pair<unsigned int, unsigned int>> & implications, const std::set<int> & X, std::set<int> & R)
	{

		//
		// R = R \cap X
		//
		auto it_R = R.cbegin();
		while (it_R != R.cend())
		{
			
			// Element is not in X, thus remove from R
			if (X.find(*it_R) == X.end())
			{
				it_R = R.erase(it_R);
			}
			// Element is in X
			else
			{
				++it_R;
			}
			
		}
		
		//
		// X_minus_R = X \ R
		//
		auto X_minus_R = std::set<int>();
		for_each(X.cbegin(), X.cend(), [&X_minus_R, R](int p){ if (R.find(p) == R.end()) X_minus_R.insert(p); });
		
		
		//
		// Process negative examples
		//
		for (const auto & dp : datapoints)
		{
			
			// If negative example satisfies the current conjunction, add its first 0-entries to the conjunction
			if (dp.cl == classification::NEGATIVE && satisfies(dp, R))
			{
				
				auto it_XmR = X_minus_R.cbegin();
				
				while (it_XmR != X_minus_R.cend() && dp.data[*it_XmR])
				{
					++it_XmR;
				}
				
				assert (it_XmR != X_minus_R.cend());
				
				R.insert(*it_XmR);
				X_minus_R.erase(it_XmR);
				
			}
			
		}
		
		
		//
		// Process implications
		//
		for (const auto & impl : implications)
		{
			
			// If implication is not consistent with the conjunction, add the first 0-entries of the left-hand-side to the conjunction
			if (satisfies(datapoints[impl.first], R) && !satisfies(datapoints[impl.second], R))
			{
				
				auto it_XmR = X_minus_R.cbegin();
				
				while (it_XmR != X_minus_R.cend() && datapoints[impl.first].data[*it_XmR])
				{
					++it_XmR;
				}
				
				assert (it_XmR != X_minus_R.cend());
				
				R.insert(*it_XmR);
				X_minus_R.erase(it_XmR);
				
			}
			
		}

	}

};

#endif