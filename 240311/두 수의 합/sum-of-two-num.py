from itertools import combinations

n, k = map(int, input().split())
numbers = list(map(int, input().split()))

cases = list(combinations(numbers, 2))
possible = list(filter(lambda x: x == k, map(lambda x: x[0] + x[1], cases)))
print(len(possible))