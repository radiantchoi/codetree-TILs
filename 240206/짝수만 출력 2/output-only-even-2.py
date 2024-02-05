b, a = map(int, input().split())

result = []
while b >= a:
    result.append(str(b))
    b -= 2

print(" ".join(result))