import heapq

n, m = map(int, input().split())
points = []

for _ in range(n):
    x, y = map(int, input().split())
    heapq.heappush(points, (abs(x) + abs(y), x, y))

for _ in range(m):
    dist, x, y = heapq.heappop(points)
    x += 2
    y += 2
    dist = abs(x) + abs(y)

    heapq.heappush(points, (dist, x, y))

dist, x, y = heapq.heappop(points)
print("{} {}".format(x, y))