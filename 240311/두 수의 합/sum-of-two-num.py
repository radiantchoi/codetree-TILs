from itertools import combinations

n, k = map(int, input().split())
numbers = list(map(int, input().split()))

cases = list(combinations(numbers, 2))
possible = list(filter(lambda x: x[0] + x[1] == k, cases))
print(len(possible))