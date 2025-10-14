from __future__ import print_function 
from simpleai.search import ( 
    CspProblem, backtrack, min_conflicts, 
    MOST_CONSTRAINED_VARIABLE, HIGHEST_DEGREE_VARIABLE, 
    LEAST_CONSTRAINING_VALUE 
) 
 
# ------------------------- 
# Variables (states/regions) 
# ------------------------- 
variables = ('WA', 'NT', 'SA', 'Q', 'NSW', 'V', 'T') 
 
# Each region can be colored: red, green, or blue 
domains = {v: ['red', 'green', 'blue'] for v in variables} 
 
# ------------------------- 
# Constraints 
# ------------------------- 
def const_different(variables, values): 
    """Ensure that neighboring regions have different colors.""" 
    return values[0] != values[1] 
 
constraints = [ 
    (('WA', 'NT'), const_different), 
    (('WA', 'SA'), const_different), 
    (('SA', 'NT'), const_different), 
    (('SA', 'Q'), const_different), 
    (('NT', 'Q'), const_different), 
    (('SA', 'NSW'), const_different), 
    (('Q', 'NSW'), const_different), 
    (('SA', 'V'), const_different), 
    (('NSW', 'V'), const_different), 
] 
 
# ------------------------- 
# CSP Problem Definition 
# ------------------------- 
my_problem = CspProblem(variables, domains, constraints) 
 
# ------------------------- 
# Solutions 
# ------------------------- 
print("Solution with simple backtracking:") 
print(backtrack(my_problem)) 
 
print("\nBacktracking with MOST_CONSTRAINED_VARIABLE heuristic:") 
 
 
 
print(backtrack(my_problem, variable_heuristic=MOST_CONSTRAINED_VARIABLE)) 
 
print("\nBacktracking with HIGHEST_DEGREE_VARIABLE heuristic:") 
print(backtrack(my_problem, variable_heuristic=HIGHEST_DEGREE_VARIABLE)) 
 
print("\nBacktracking with LEAST_CONSTRAINING_VALUE heuristic:") 
print(backtrack(my_problem, value_heuristic=LEAST_CONSTRAINING_VALUE)) 
 
print("\nBacktracking with MOST_CONSTRAINED_VARIABLE + LEAST_CONSTRAINING_VALUE:") 
print( 
    backtrack( 
        my_problem, 
        variable_heuristic=MOST_CONSTRAINED_VARIABLE, 
        value_heuristic=LEAST_CONSTRAINING_VALUE 
    ) 
) 
 
print("\nBacktracking with HIGHEST_DEGREE_VARIABLE + LEAST_CONSTRAINING_VALUE:") 
print( 
    backtrack( 
        my_problem, 
        variable_heuristic=HIGHEST_DEGREE_VARIABLE, 
        value_heuristic=LEAST_CONSTRAINING_VALUE 
    ) 
) 
 
print("\nSolution with Min-Conflicts (local search):") 
print(min_conflicts(my_problem)) 