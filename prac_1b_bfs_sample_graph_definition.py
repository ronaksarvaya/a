graph = { 
    'A': {'B', 'C'}, 
    'B': {'A', 'D', 'E'}, 
    'C': {'A', 'F'}, 
    'D': {'B'}, 
    'E': {'B', 'F'}, 
    'F': {'C', 'E'} 
} 
 
# BFS path finder 
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