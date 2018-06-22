#ifndef __SORCAR_H__
#define __SORCAR_H__

// C++ includes
#include <fstream>
#include <iostream>
#include <list>
#include <set>
#include <stdexcept>
#include <vector>

// C includes
#include <cassert>

// Project includes
#include "attributes_metadata.h"
#include "datapoint.h"
#include "horn_constraint.h"

namespace horn_verification
{

	class sorcar
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
		static bool satisfies(const datapoint<bool> & dp, const std::set<unsigned> & conjunction)
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



		static std::vector<std::set<unsigned>> horndini(const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints, const std::vector<std::pair<unsigned, unsigned>> & intervals)
		{
			
			//
			// Check arguments
			//
			if (intervals.empty())
			{
				throw std::runtime_error("Intervals are empty");
			}
			
			
			//
			// Prepare initial conjunctions
			//
			std::vector<std::set<unsigned>> conjunctions(intervals.size());
			for (unsigned i = 0; i < intervals.size(); ++i)
			{
				
				auto & conjunction = conjunctions[i];

				for (unsigned j = intervals[i].first; j <= intervals[i].second; ++j)
				{
					conjunction.insert(conjunction.end(), j);
				}
				
			}
			
			
			//
			// Run Horndini
			//
			horndini(datapoints, horn_constraints, conjunctions);
			
			//
			// Return
			//
			return conjunctions;
			
		}
		

		static void horndini(const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints, std::vector<std::set<unsigned>> & conjunctions)
		{
			
			//
			// Create list of positive data points
			//
			std::vector<const datapoint<bool> *> positive;
			positive.reserve(datapoints.size());
			for (const auto & dp : datapoints)
			{
				if (dp._is_classified && dp._classification)
				{
					positive.push_back(&dp);
				}
			}

			
			//
			// Working copy of Horn constraints
			//
			std::list<horn_constraint<bool>> copy_of_hc;
			for (const auto & hc : horn_constraints)
			{
				
				// Copy left-hand-side
				std::vector <datapoint<bool> *> lhs = hc._premises;

				// Add Horn constraint
				copy_of_hc.push_back(horn_constraint<bool>(lhs, hc._conclusion));
				
			}
			
			
			//
			// Knock out predicates that occur negative in a positive datapoint
			//
			do
			{

				// Process positive datapoints
				for (const auto & dp : positive)
				{
				
					auto id = dp->_categorical_data[0];
					assert (id >= 0 && id < conjunctions.size());
				
					auto pred_it = conjunctions[id].begin();
					while (pred_it != conjunctions[id].end())
					{
				
						if (!dp->_int_data[*pred_it])
						{
							pred_it = conjunctions[id].erase(pred_it);
						}
						else
						{
							++pred_it;
						}
				
					}
				
				}
				
				positive.clear();
				
				
				// Add right-hand-side of Horn clause if all left-hand-sides satisfy the current conjunction
				auto horn_it = copy_of_hc.begin();
				while (horn_it != copy_of_hc.end())
				{
				
					// Check whether data point of left-hand-side is satisfied
					auto lhs_it = horn_it->_premises.begin();
					while (lhs_it != horn_it->_premises.end())
					{
						
						auto id = (*lhs_it)->_categorical_data[0];
						assert (id >= 0 && id < conjunctions.size());
						
						// Remove data point from lhs if it satisfies the conjunction
						if (satisfies(**lhs_it, conjunctions[id]))
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
							horn_it = copy_of_hc.erase(horn_it);
						}
						
					}
					else
					{
						++ horn_it;
					}
				
				}
				
			}
			while (!positive.empty());

		}

		
		
		static void reduce_predicates_all(const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints, const std::vector<std::set<unsigned>> & X, std::vector<std::set<unsigned>> & R)
		{
			
			//
			// Check arguments
			//
			if (X.empty())
			{
				throw std::runtime_error("X must not be empty");
			}
			else if (X.size() != R.size())
			{
				throw std::runtime_error("R and X must be of same size");
			}
			
			
			//
			// R = R \cap X
			// X_minus_R = X \ R
			//
			std::vector<std::set<unsigned>> X_minus_R(X.size());
			for (unsigned i = 0; i < X.size(); ++i)
			{

				auto R_it = R[i].begin();
				auto X_it = X[i].cbegin();
				
				while (R_it != R[i].end() && X_it != X[i].cend())
				{
					
					if (*R_it < *X_it) // In R but not in X (remove from R)
					{
						R_it = R[i].erase(R_it);
					}
					else if (*X_it < *R_it) // In X but not in R (add to X\R)
					{
						X_minus_R[i].insert(X_minus_R[i].end(), *X_it);
						++X_it;
					}
					else // In both X and R (skip)
					{
						++R_it;
						++X_it;
					}
					
				}
				
				R[i].erase(R_it, R[i].end());
				X_minus_R[i].insert(X_it, X[i].cend());
			
			}


			//
			// Process negative examples
			//
			for (const auto & dp : datapoints)
			{

				auto id = dp._categorical_data[0];
				assert (id >= 0 && id < R.size());
		
				// If negative example satisfies the current conjunction, add all its 0-entries to the conjunction
				if (dp._is_classified && !dp._classification && satisfies(dp, R[id]))
				{
					
					if (!satisfies(dp, X[id]))
					{
						std::cout << dp << std::endl << std::flush;
					}
					assert(!satisfies(dp, X[id]));
					
					auto size_before = R[id].size();
					auto it_XmR = X_minus_R[id].begin();
					
					while (it_XmR != X_minus_R[id].end())
					{

						if (dp._int_data[*it_XmR] == 0)
						{
							R[id].insert(*it_XmR);
							it_XmR = X_minus_R[id].erase(it_XmR);
						}
						else
						{
							++it_XmR;
						}
						
					}
					
					assert (size_before < R[id].size());
					
				}
		
			}
			
			
			//
			// Process Horn constraints
			//
			for (const auto & hc : horn_constraints)
			{
				
				//
				// Check whether left-hand-side of Horn constraint is satisfied
				//
				bool lhs_satisfied = true;
				for (const auto & dp : hc._premises)
				{
					
					auto id = dp->_categorical_data[0];
					assert (id >= 0 && id < R.size());
					
					if (!satisfies(*dp, R[id]))
					{
						lhs_satisfied = false;
						break;
					}
					
				}

				
				//
				// If Horn constraint is not consistent with the conjunction, add ALL 0-entries of ALL left-hand-side dat apoints to the conjunction
				//
				if (lhs_satisfied && (hc._conclusion == nullptr || !satisfies(*hc._conclusion, R[hc._conclusion->_categorical_data[0]])))
				{
					
					for (const auto & dp : hc._premises)
					{
						
						auto id = dp->_categorical_data[0];
						auto it_XmR = X_minus_R[id].begin();
					
						while (it_XmR != X_minus_R[id].end())
						{

							if (dp->_int_data[*it_XmR] == 0)
							{
								R[id].insert(*it_XmR);
								it_XmR = X_minus_R[id].erase(it_XmR);
							}
							else
							{
								++it_XmR;
							}
							
						}
						
					}
					
				}
				
			}
		
			
		}
		
		
		static void reduce_predicates_first(const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints, const std::vector<std::set<unsigned>> & X, std::vector<std::set<unsigned>> & R)
		{
			
			//
			// Check arguments
			//
			if (X.empty())
			{
				throw std::runtime_error("X must not be empty");
			}
			else if (X.size() != R.size())
			{
				throw std::runtime_error("R and X must be of same size");
			}
			
			
			//
			// R = R \cap X
			// X_minus_R = X \ R
			//
			std::vector<std::set<unsigned>> X_minus_R(X.size());
			for (unsigned i = 0; i < X.size(); ++i)
			{

				auto R_it = R[i].begin();
				auto X_it = X[i].cbegin();
				
				while (R_it != R[i].end() && X_it != X[i].cend())
				{
					
					if (*R_it < *X_it) // In R but not in X (remove from R)
					{
						R_it = R[i].erase(R_it);
					}
					else if (*X_it < *R_it) // In X but not in R (add to X\R)
					{
						X_minus_R[i].insert(X_minus_R[i].end(), *X_it);
						++X_it;
					}
					else // In both X and R (skip)
					{
						++R_it;
						++X_it;
					}
					
				}
				
				R[i].erase(R_it, R[i].end());
				X_minus_R[i].insert(X_it, X[i].cend());
			
			}
			
			
			//
			// Process negative examples
			//
			for (const auto & dp : datapoints)
			{

				auto id = dp._categorical_data[0];
				assert (id >= 0 && id < R.size());
		
				// If negative example satisfies the current conjunction, add the first 0-entry to the conjunction
				if (dp._is_classified && !dp._classification && satisfies(dp, R[id]))
				{
					
					auto size_before = R[id].size();
					auto it_XmR = X_minus_R[id].begin();
					
					while (it_XmR != X_minus_R[id].end())
					{

						if (dp._int_data[*it_XmR] == 0)
						{
							R[id].insert(*it_XmR);
							it_XmR = X_minus_R[id].erase(it_XmR);
							break;
						}
						else
						{
							++it_XmR;
						}
						
					}
					
					assert (size_before < R[id].size());
					
				}
		
			}
			
			
			//
			// Process Horn constraints
			//
			for (const auto & hc : horn_constraints)
			{
				
				//
				// Check whether left-hand-side of Horn constraint is satisfied
				//
				bool lhs_satisfied = true;
				for (const auto & dp : hc._premises)
				{
					
					auto id = dp->_categorical_data[0];
					assert (id >= 0 && id < R.size());
					
					if (!satisfies(*dp, R[id]))
					{
						lhs_satisfied = false;
						break;
					}
					
				}

				
				//
				// If Horn constraint is not consistent with the conjunction, add ALL 0-entries of ALL left-hand-side dat apoints to the conjunction
				//
				if (lhs_satisfied && (hc._conclusion == nullptr || !satisfies(*hc._conclusion, R[hc._conclusion->_categorical_data[0]])))
				{
					
					bool removed = false;
					
					for (const auto & dp : hc._premises)
					{
						
						auto id = dp->_categorical_data[0];
						auto it_XmR = X_minus_R[id].begin();
					
						while (it_XmR != X_minus_R[id].end() && !removed)
						{

							if (dp->_int_data[*it_XmR] == 0)
							{
								R[id].insert(*it_XmR);
								it_XmR = X_minus_R[id].erase(it_XmR);
								removed = true;
							}
							else
							{
								++it_XmR;
							}
							
						}
						
						if (removed)
						{
							break;
						}
					
					}
					
					assert (removed);
					
				}
				
			}
			
			
		}
		
		
		
		
		
		
		static bool is_consistent(const std::vector<std::set<unsigned>> & predicates, const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints)
		{

			//
			// Check positive and negative data points
			//
			for (const auto & dp : datapoints)
			{
				
				if (dp._is_classified)
				{
				
					auto classification = satisfies(dp, predicates[dp._categorical_data[0]]);

					if (classification && !dp._classification)
					{
						std::cerr << dp << " not consistent!" << std::endl;
						return false;
					}
					else if (!classification && dp._classification)
					{
						std::cerr << dp << " not consistent!" << std::endl;
						return false;
					}
					
				}
			
			}
			
			
			//
			// Check Horn constraints
			//
			for (const auto & hc : horn_constraints)
			{
				
				// Check lhs
				bool satisfies_lhs = true;
				for (const auto & premis : hc._premises)
				{
					if (!satisfies(*premis, predicates[premis->_categorical_data[0]]))
					{
						satisfies_lhs = false;
						break;
					}
				}
				
				// Check rhs if lhs is atisfied
				if (satisfies_lhs && (hc._conclusion == nullptr || !satisfies(*hc._conclusion, predicates[hc._conclusion->_categorical_data[0]])))
				{
					std::cerr << hc << " not consistent!" << std::endl;
					return false;
				}
				
			}
			
			
			return true;
			
		}
		

		static void write_R_file (const std::string & filename, const std::vector<std::set<unsigned>> & R)
		{
			
			//
			// Open file
			//
			std::ofstream outfile(filename);
			// Check opening the file failed
			if (outfile.fail())
			{
				throw std::runtime_error("Error opening " + filename);
			}
	
			
			//
			// Write
			//
			for (unsigned i = 0; i < R.size(); ++i)
			{
				
				if (i > 0)
				{
					outfile << std::endl;
				}
				
				// Empty conjunction
				if (R[i].empty())
				{
					outfile << "e";
				}
				
				// Non-empty conjunction
				else
				{
					for (const auto & p : R[i])
					{
						outfile << p << " ";
					}
				}
				
			}
	
			
			//
			// Close file
			//
			outfile.close();
	
		}
	
	
		
		static std::vector<std::set<unsigned>> read_R_file (const std::string & filename)
		{
			
			//
			// Open file
			//
			std::ifstream infile(filename);
			// Check opening the file failed
			if (infile.fail())
			{
				throw std::runtime_error("Error opening " + filename);
			}
			
			
			std::vector<std::set<unsigned>> R;
			
			
			//
			// Read file line by line
			//
			std::string line;
			while (std::getline(infile, line))
			{
				
				// Skip empty lines
				if (line.empty())
				{
					continue;
				}
				
				// Empty conjunction
				else if (line == "e")
				{
					R.push_back(std::set<unsigned>());
				}
				
				// Non-empty conjunction
				else
				{
					std::set<unsigned> cur_R;
					std::stringstream line_stream(line);
					unsigned p;
				
					// Read predicates from line
					while (line_stream >> p)
					{
						cur_R.insert(p);
					}
				
					R.push_back(std::move(cur_R)); // No use of cur_R beyond this point
					
				}
			
			}
			
			
			//
			// Close file
			//
			infile.close();
			
			return R;
			
		}
		
	};

}; // End namespace horn_verification

#endif