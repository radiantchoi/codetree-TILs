letters = [
    list(map(lambda x: x.upper(), input().split()))
    for _ in range(5)
]

for row in letters:
    print(" ".join(row))