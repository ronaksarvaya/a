graph1 = { 
    'A': set(['B', 'C']), 
    'B': set(['A', 'D', 'E']), 
    'C': set(['A', 'F']), 
    'D': set(['B']), 
    'E': set(['B']), 
    'F': set(['C', 'E']) 
} 
 
def dfs(graph, node, visit): 
    if node not in visit: 
        visit.append(node) 
        for n in graph[node]: 
            dfs(graph, n, visit) 
    return visit 
 
visit = dfs(graph1, 'F', []) 
print(visit) 