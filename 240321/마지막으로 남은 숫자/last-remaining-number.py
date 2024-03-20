import heapq

n = int(input())
numbers = list(map(int, input().split()))

pq = []

for number in numbers:
    heapq.heappush(pq, -number)

while len(pq) > 1:
    first = -heapq.heappop(pq)
    second = -heapq.heappop(pq)

    if first != second:
        new = abs(first - second)
        heapq.heappush(pq, -new)

print(-heapq.heappop(pq))