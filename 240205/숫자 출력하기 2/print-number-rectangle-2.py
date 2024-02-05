from collections import deque

n, m = map(int, input().split())
maximum = n * m
current = 1

result = []
row = deque([])
reversing = False

while current <= maximum:
    if reversing:
        row.appendleft(current)
    else:
        row.append(current)
    
    current += 1

    if len(row) == m:
        result.append(row)
        row = deque([])

        if reversing:
            reversing = False
        else:
            reversing = True

result.append(row)

for row in result:
    print(" ".join(list(map(str, row))))