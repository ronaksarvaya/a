tree = [[[5, 1, 2], [8, -8, -9]], [[9, 4, 5], [-3, 4, 3]]] 
root = 0 
pruned = 0 
 
 
def children(branch, depth, alpha, beta): 
    global tree 
    global root 
    global pruned 
 
 
    i = 0 
    for child in branch: 
        if type(child) is list: 
            (nalpha, nbeta) = children(child, depth + 1, alpha, beta) 
            if depth % 2 == 1: 
                beta = min(beta, nalpha) 
            else: 
                alpha = max(alpha, nbeta) 
            branch[i] = alpha if depth % 2 == 0 else beta 
        else: 
            if depth % 2 == 0 and alpha < child: 
                alpha = child 
            if depth % 2 == 1 and beta > child: 
                beta = child 
            if alpha >= beta: 
                pruned += 1 
                break 
        i += 1 
 
 
    if depth == root: 
        tree = alpha if root == 0 else beta 
    return (alpha, beta) 
 
 
def alphabeta(in_tree=tree, start=root, upper=-1, lower=15): 
    global tree 
    global pruned 
    global root 
 
    (alpha, beta) = children(tree, start, upper, lower) 
 
 
    if __name__ == "__main__": 
        print("(alpha, beta):", alpha, beta) 
        print("result:", tree) 
        print("Times pruned:", pruned) 
    return (alpha, beta, tree, pruned) 

if __name__ == "__main__": 
    alphabeta() 