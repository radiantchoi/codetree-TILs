import heapq

n = int(input())
items = []

for _ in range(n):
    number = int(input())

    if number > 0:
        heapq.heappush(items, -number)
    else:
        if not items:
            print("0")
        else:
            print(-heapq.heappop(items))