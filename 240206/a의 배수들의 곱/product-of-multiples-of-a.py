from functools import reduce

a, b = map(int, input().split())
print(reduce(lambda x, c: c * x, [x for x in range(1, b+1) if x % a == 0], 1))