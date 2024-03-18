from itertools import combinations

a = []
b = []

n, m = map(int, input().split())

for _ in range(n):
    a.append(input())

for _ in range(n):
    b.append(input())

selections = list(combinations(list(range(m)), 3))
result = 0

for selection in selections:
    pools = set()

    for word in a:
        key = (word[selection[0]], word[selection[1]], word[selection[2]])
        pools.add(key)
    
    distinct = True
    for word in b:
        key = (word[selection[0]], word[selection[1]], word[selection[2]])
        if key in pools:
            distinct = False
            break
    
    if distinct:
        result += 1

print(result)