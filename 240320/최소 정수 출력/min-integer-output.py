import heapq

n = int(input())

items = []

for _ in range(n):
    order = int(input())

    if order > 0:
        heapq.heappush(items, order)
    else:
        if not items:
            print("0")
        else:
            result = heapq.heappop(items)
            print(result)