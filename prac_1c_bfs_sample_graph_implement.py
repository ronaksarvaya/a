graph = { 
    'A': set(['B', 'C']), 
    'B': set(['A', 'D', 'E']), 
    'C': set(['A', 'F']), 
    'D': set(['B']), 
    'E': set(['B']), 
    'F': set(['C', 'E']) 
} 
 
 
# implement logic of BFS 
def bfs(start): 
    queue = [start] 
    levels = {}              # this dict keeps track of levels 
    levels[start] = 0        # depth of start node is 0 
    visit = set(start) 
    while queue: 
        node = queue.pop(0) 
        neighbours = graph[node] 
        for bor in neighbours: 
            if bor not in visit: 
                queue.append(bor) 
                visit.add(bor) 
                levels[bor] = levels[node] + 1 
    print(levels)            # print graph level 
    return visit 
 
 
print(str(bfs('A')))         # print graph nodes 
 
 
# for finding breadth first search path 
def bfs_paths(graph, start, goal): 
    queue = [(start, [start])] 
    while queue: 
        (vertex, path) = queue.pop(0) 
        for next in graph[vertex] - set(path): 
            if next == goal: 
                yield path + [next] 
            else: 
                queue.append((next, path + [next])) 
 
result = list(bfs_paths(graph, 'A', 'F')) 
 
print(result) 
# for finding shortest path 
def shortest_path(graph, start, goal): 
    try: 
        return next(bfs_paths(graph, start, goal)) 
    except StopIteration: 
        return None 
    
result1 = shortest_path(graph, 'A', 'F') 
print(result1)