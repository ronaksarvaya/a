from __future__ import print_function

from simpleai.search import astar, SearchProblem
from simpleai.search.viewers import WebViewer

# Goal and initial puzzle configurations
GOAL = '''1-2-3
4-5-6
7-8-e'''

INITIAL = '''4-1-2
7-e-3
8-5-6'''

# Utility functions
def list_to_string(list_):
    """Convert list of lists into string representation"""
    return '\n'.join(['-'.join(row) for row in list_])

def string_to_list(string_):
    """Convert string representation into list of lists"""
    return [row.split('-') for row in string_.split('\n')]

def find_location(rows, element_to_find):
    """Find the row, col of a given element (list '1','e')"""
    for ir, row in enumerate(rows):
        for ic, element in enumerate(row):
            if element == element_to_find:
                return ir, ic

# Precompute goal positions for heuristic
goal_positions = {}
rows_goal = string_to_list(GOAL)
for number in '12345678e':
    goal_positions[number] = find_location(rows_goal, number)

# Problem Definition
class EightPuzzleProblem(SearchProblem):
    def actions(self, state):
        """Return possible moves (tiles that can slide into the empty space)"""
        rows = string_to_list(state)
        row_e, col_e = find_location(rows, 'e')
        actions = []

        if row_e > 0:  # Move tile from above
            actions.append(rows[row_e - 1][col_e])
        if row_e < 2:  # Move tile from below
            actions.append(rows[row_e + 1][col_e])
        if col_e > 0:  # Move tile from left
            actions.append(rows[row_e][col_e - 1])
        if col_e < 2:  # Move tile from right
            actions.append(rows[row_e][col_e + 1])

        return actions

    def result(self, state, action):
        """Return new state after moving the chosen tile into the empty spaces"""
        rows = string_to_list(state)
        row_e, col_e = find_location(rows, 'e')
        row_n, col_n = find_location(rows, action)

        # Swap empty and chosen tile
        rows[row_e][col_e], rows[row_n][col_n] = rows[row_n][col_n], rows[row_e][col_e]

        return list_to_string(rows)

    def is_goal(self, state):
        """Check if current state is the goal state."""
        return state == GOAL

    def cost(self, state1, action, state2):
        """Each move has cost = 1 (uniform cost)."""
        return 1

    def heuristic(self, state):
        """Heuristic: Manhattan Distance of all tiles from goals"""
        rows = string_to_list(state)
        distance = 0
        for number in '12345678e':
            row_n, col_n = find_location(rows, number)
            row_goal, col_goal = goal_positions[number]
            distance += abs(row_n - row_goal) + abs(col_n - col_goal)
        return distance

if __name__ == "__main__":
    result = astar(EightPuzzleProblem(INITIAL))

    for action, state in result.path():
        print('Move tile:', action)
        print(state)
        print("-" * 20)
