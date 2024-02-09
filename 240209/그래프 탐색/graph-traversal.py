n, m = map(int, input().split())

graph = [[] for _ in range(n)]

for _ in range(m):
    dep, arr = map(int, input().split())
    graph[dep-1].append(arr-1)
    graph[arr-1].append(dep-1)

visited = [False for _ in range(n)]

stack = []
stack.append(0)
result = 0

while stack:
    node = stack.pop()
    if not visited[node]:
        visited[node] = True
        if node > 0:
            result += 1
    
    for child in graph[node]:
        if not visited[child]:
            stack.append(child)

print(result)