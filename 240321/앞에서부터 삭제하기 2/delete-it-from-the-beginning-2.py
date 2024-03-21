import heapq
from collections import deque

n = int(input())
numbers = deque(map(int, input().split()))
gross = sum(numbers)

k = 1

gross -= numbers.popleft()
storage = [x for x in numbers]
tmp = heapq.heappop(storage)
avg = (gross - tmp) / (n - k - 1)

while k < n - 2:
    k += 1
    gross -= numbers.popleft()
    pocket = [x for x in numbers]
    heapq.heapify(pocket)
    num = heapq.heappop(pocket)
    avg = max(avg, (gross - num) / (n - k - 1))

print("%.2f" % avg)