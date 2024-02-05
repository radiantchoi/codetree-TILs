b, a = map(int, input().split())

print(" ".join(reversed([str(x) for x in range(a, b+1) if x % 2 == 0])))