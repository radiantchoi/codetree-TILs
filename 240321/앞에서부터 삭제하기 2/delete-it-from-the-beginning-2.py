import heapq

n = int(input())
numbers = list(map(int, input().split()))

gross = 0
maximum = 0
pq = []

heapq.heappush(pq, numbers[n-1])
gross += numbers[n - 1]

for i in range(n - 2, 0, -1):
    heapq.heappush(pq, numbers[i])
    gross += numbers[i]

    minimum = pq[0]

    avg = (gross - minimum) / (n - i - 1)

    maximum = max(maximum, avg)

print("%.2f" % maximum)