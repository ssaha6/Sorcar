#ifndef __SORCAR_SAT_HPP__
#define __SORCAR_SAT_HPP__

// C++ includes
#include <algorithm>
#include <memory>
#include <set>
#include <vector>

// Z3 includes
#include "z3++.h"

// Project includes
#include "datapoint.hpp"


class sorcar_sat
{

public:

	static void reduce_predicates_sat(const std::vector<datapoint> & datapoints, const std::vector<std::pair<unsigned int, unsigned int>> & implications, const std::set<int> & X, std::set<int> & R, size_t number_of_predicates)
	{
	
		std::cerr << "RUNNING SORCAR SAT" << std::endl;
	
	
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
		// Iterate over increasing number of elements to add to R
		//
		size_t max_number_of_predicates = R.size();
		auto consistent = false;
		
		do
		{
			
			//
			// Prepare solver
			//
			z3::context ctx;
			z3::solver solver(ctx);
			
			//
			// Create variables
			//
			std::vector<z3::expr> variables;
			variables.reserve(number_of_predicates);
			for (size_t p = 0; p < number_of_predicates; ++p)
			{
				variables.push_back(ctx.constant(ctx.int_symbol(p), ctx.bool_sort()));
			}
			
		
			//
			// Constraints 
			//
			
			// Negative
			auto negatives_constraint = ctx.bool_val(true);
			for (const auto & dp : datapoints)
			{
				
				if (dp.cl == classification::NEGATIVE)
				{
					
					auto neg_expr = ctx.bool_val(false);
					
					for (const auto p : X)
					{
						if (!dp.data[p])
						{
							neg_expr = neg_expr || variables[p];
						}
						
					}
					
					negatives_constraint = negatives_constraint && neg_expr;
					
				}
				
			}
			
			// Implications
			auto implications_constraint = ctx.bool_val(true);
			for (const auto & impl : implications)
			{
			
				auto lhs = datapoints[impl.first];
				auto rhs = datapoints[impl.second];
			
				auto lhs_expr = ctx.bool_val(true);
				for (const auto p : X)
				{
					if (!lhs.data[p])
					{
						lhs_expr = lhs_expr && !variables[p];
					}
				}
				
				auto rhs_expr = ctx.bool_val(true);
				for (const auto p : X)
				{
					if (!rhs.data[p])
					{
						rhs_expr = rhs_expr && !variables[p];
					}
				}
				
				implications_constraint = implications_constraint && (z3::implies(lhs_expr, rhs_expr));
				
			}
			
			// R constraints
			auto R_constraint = ctx.bool_val(true);
			for (const auto p : R)
			{
				R_constraint = R_constraint && variables[p];
			}
			
			// Minimality constraint
			auto sum = ctx.int_val(0); 
			for (const auto p : X)
			{
				sum = sum + z3::ite(variables[p], ctx.int_val(1), ctx.int_val(0));
			}
			auto size_constraint = sum <= ctx.int_val((int)max_number_of_predicates);
			
			
			//
			// Solve
			//
			solver.add(negatives_constraint);
			solver.add(implications_constraint);
			solver.add(size_constraint);
			auto result = solver.check();
			
			// Satisfiable, get model and return
			if (result == z3::check_result::sat)
			{
				
				// Get model
				auto model = solver.get_model();
				
				// Extract predicates
				R.clear();
				for (const auto p : X)
				{
					if (Z3_get_bool_value(ctx, model.eval(variables[p], true)) == Z3_lbool::Z3_L_TRUE)
					{
						R.insert(p);
					}						
				}
				
				consistent = true;
				
			}
			// Unsatisfiable, increase the maximal number of allowed predicates by one
			else
			{
				++max_number_of_predicates;
				std::cerr << "INCREASING ALLOWED NUMBER OF PREDICATES TO " << max_number_of_predicates << std::endl;
				//throw std::runtime_error("Error: could not find a consistent conjunction");
			}
			
			
		} while (!consistent);
		
	}

};

#endif