#ifndef __SORCAR_Z3_H__
#define __SORCAR_Z3_H__

// C++ includes
#include <unordered_map>
#include <set>
#include <stdexcept>
#include <vector>

// C includes
#include <cassert>

// Z3 includes
#include "z3++.h"

// Project includes
#include "attributes_metadata.h"
#include "datapoint.h"
#include "horn_constraint.h"
#include "sorcar.h"


namespace horn_verification
{

	class sorcar_z3
	{
		
		
		public:
		
		
		static void reduce_predicates_min(const std::vector<datapoint<bool>> & datapoints, const std::vector<horn_constraint<bool>> & horn_constraints, const std::vector<std::set<unsigned>> & X, std::vector<std::set<unsigned>> & R)
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
			// Get total number of attributes. If no data point to count those attributes
			// is present, just return without doing anything.
			//
			if (datapoints.empty())
			{
				return;
			}
			auto n = datapoints[0]._int_data.size();
			
			
			
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
		
			std::cout << "---------- X ----------" << std::endl;
			for (unsigned i = 0; i < X.size(); ++i)
			{
				std::cout << i << ": {";
				for (const auto & p : X[i])
				{
					std::cout << p << " ";
				}
				std::cout << "}" << std::endl;
			}
		
			std::cout << "---------- R ----------" << std::endl;
			for (unsigned i = 0; i < R.size(); ++i)
			{
				std::cout << i << ": {";
				for (const auto & p : R[i])
				{
					std::cout << p << " ";
				}
				std::cout << "}" << std::endl;
			}
		
			std::cout << "---------- X\\R ----------" << std::endl;
			for (unsigned i = 0; i < X_minus_R.size(); ++i)
			{
				std::cout << i << ": {";
				for (const auto & p : X_minus_R[i])
				{
					std::cout << p << " ";
				}
				std::cout << "}" << std::endl;
			}
		
		
		
		
			//
			// Prepare Z3 and required data structures
			//
			z3::context ctx;
			z3::expr conjunction = ctx.bool_val(true);
			std::vector<std::unordered_map<unsigned, z3::expr>> predicate2expr(X_minus_R.size());
			for (unsigned i = 0; i < X_minus_R.size(); ++i)
			{
				for (const auto & p : X_minus_R[i])
				{
					predicate2expr[i].emplace(p, ctx.constant(ctx.int_symbol(p), ctx.bool_sort()));
				}
			}
			
		
			
			//
			// Process negative examples
			//
			std::cout << "---------- Negative examples ----------" << std::endl;
			for (const auto & dp : datapoints)
			{

				auto id = dp._categorical_data[0];
		
				// If negative example satisfies the current conjunction, add disjunction of all relevant attributes to solver
				if (dp._is_classified && !dp._classification && sorcar::satisfies(dp, R[id]))
				{

					std::cout << "Adding constraints for negative example " << dp << std::endl;
			
					// Create disjunction of all predicates
					z3::expr disjunction = ctx.bool_val(false);
			
					for (const auto & p : X_minus_R[id])
					{
						if (dp._int_data[p] == 0)
						{
							disjunction = disjunction || predicate2expr[id].at(p);
						}
					}
					
					conjunction = conjunction && disjunction;
					std::cout << disjunction << std::endl;
					
				}
		
			}


			//
			// Process Horn constraints
			//
			std::cout << "Horn constraints" << std::endl;
			for (const auto & hc : horn_constraints)
			{
				
				std::cout << hc << std::endl;
				
				//
				// Check whether left-hand-side of Horn constraint is satisfied
				//
				bool lhs_satisfied = true;
				for (const auto & dp : hc._premises)
				{
					
					auto id = dp->_categorical_data[0];
					assert (id >= 0 && id < R.size());
					
					if (!sorcar::satisfies(*dp, R[id]))
					{
						lhs_satisfied = false;
						break;
					}
					
				}

				
				//
				// If Horn constraint is not consistent with the conjunction, add disjunction of all relevant attributes
				//
				if (lhs_satisfied && (hc._conclusion == nullptr || !sorcar::satisfies(*hc._conclusion, R[hc._conclusion->_categorical_data[0]])))
				{
				
					std::cout << "Adding constraints for Horn clause " << hc << std::endl;
				
					// Create disjunction of all predicates
					z3::expr disjunction = ctx.bool_val(false);
					
					for (const auto & dp : hc._premises)
					{
						
						auto id = dp->_categorical_data[0];
						
						for (const auto & p : X_minus_R[id])
						{
							if (dp->_int_data[p] == 0)
							{
								disjunction = disjunction || predicate2expr[id].at(p);
							}
						}
						
					}
				
					conjunction = conjunction && disjunction;
					std::cout << disjunction << std::endl;
				
				}
				
			}
			
			

			unsigned cur_num = 1;
			bool done = false;
			
			while (!done)
			{
		
				//
				// Construct count constraints
				//
				z3::expr sum = ctx.int_val(0);
				for (unsigned i = 0; i < predicate2expr.size(); ++i)
				{
					for (const auto & pair : predicate2expr[i])
					{
						sum = sum + z3::ite(pair.second, ctx.int_val(1), ctx.int_val(0));
					}
				}
		
		
				//
				// Solve
				//		
				z3::solver solver(ctx);
				solver.add(conjunction);
				solver.add(sum <= ctx.int_val(cur_num));
				std::cout << solver << std::endl;
				auto result = solver.check();


				//
				// Sat, add relevant attributes
				//
				if (result == z3::check_result::sat)
				{
					
					std::cout << "Found solution with " << cur_num << std::endl;
					
					auto model = solver.get_model();
					std::cout << model << std::endl;
					
					// Add relevant attributes
					for (unsigned i = 0; i < X_minus_R.size(); ++i)
					{
						
						for (const auto & p : X_minus_R[i])
						{
							
							const auto & expr_it = predicate2expr[i].find(p);
							assert (expr_it != predicate2expr[i].end());
							
							// Remove predicate if model declares it relevant
							if (model.eval(expr_it->second, true).bool_value() == Z3_lbool::Z3_L_TRUE)
							{
								std::cout << "Adding " <<  p << std::endl;
								R[i].insert(p);
							}

						}
						
					}	
					

					/*
					// Add relevant attributes
					for (unsigned i = 0; i < predicate2expr.size(); ++i)
					{
						
						for (const auto & pair : predicate2expr[i])
						{
							
							// Remove predicate if model declares it relevant
							if (model.eval(pair.second, true).bool_value() == Z3_lbool::Z3_L_TRUE)
							//if (model.has_interp(pair.second.decl()) || model.eval(pair.second, true))
							{
								std::cout << "Adding " <<  pair.first << "; has interpretation: " << model.has_interp(pair.second.decl()) << std::endl;
								R[i].insert(pair.first);
							}

						}
						
						
					}
					*/
					
					done = true;
					
				}
				
				//
				// Unsat, increment
				//
				else if (result == z3::check_result::unsat)
				{
					++cur_num;
				}

				//
				// Error
				//
				else
				{
					throw std::runtime_error("UNKNOWN");
				}
				
				
				//
				// Debug
				//
				if (cur_num > n)
				{
					throw std::runtime_error("number of predicates exceeded");
				}
				
			}
		
		}
		
	};
	
}; // End namespace horn_verification

#endif