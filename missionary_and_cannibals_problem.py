from collections import deque

class State:
    def __init__(self, m_left, c_left, boat, m_right, c_right, parent=None):
        self.m_left = m_left
        self.c_left = c_left
        self.boat = boat
        self.m_right = m_right
        self.c_right = c_right
        self.parent = parent

    def is_goal(self):
        return self.m_left == 0 and self.c_left == 0

    def is_valid(self):
        return (
            self.m_left >= 0 and self.c_left >= 0 and
            self.m_right >= 0 and self.c_right >= 0 and
            (self.m_left == 0 or self.m_left >= self.c_left) and
            (self.m_right == 0 or self.m_right >= self.c_right)
        )

def successors(s):
    moves = [(2, 0), (0, 2), (1, 1), (1, 0), (0, 1)]
    children = []
    for m, c in moves:
        if s.boat == 'L':
            new = State(s.m_left - m, s.c_left - c, 'R', s.m_right + m, s.c_right + c, s)
        else:
            new = State(s.m_left + m, s.c_left + c, 'L', s.m_right - m, s.c_right - c, s)
        if new.is_valid():
            children.append(new)
    return children

def bfs():
    start = State(3, 3, 'L', 0, 0)
    q = deque([start])
    visited = set()
    while q:
        state = q.popleft()
        if state.is_goal():
            return state
        visited.add((state.m_left, state.c_left, state.boat, state.m_right, state.c_right))
        for nxt in successors(state):
            if (nxt.m_left, nxt.c_left, nxt.boat, nxt.m_right, nxt.c_right) not in visited:
                q.append(nxt)
    return None

def print_path(state):
    path = []
    while state:
        path.append(state)
        state = state.parent
    for s in reversed(path):
        print(f"{s.m_left},{s.c_left},{s.boat},{s.m_right},{s.c_right}")

if __name__ == "__main__":
    print("Missionaries and Cannibals Solution Path:")
    print_path(bfs())
