import heapq

n, m = map(int, input().split())
numbers = list(map(int, input().split()))

pq = []

for number in numbers:
    heapq.heappush(pq, -number)

for _ in range(m):
    item = -heapq.heappop(pq)
    item -= 1
    heapq.heappush(pq, -item)

print(-heapq.heappop(pq))