numbers = [
    list(map(int, input().split()))
    for _ in range(2)
]

row_sums = [sum(numbers[0]), sum(numbers[1])]
col_sums = [
    numbers[0][i] + numbers[1][i]
    for i in range(len(numbers[0]))
]

print(" ".join(list(map(lambda x: str(round(x / 4, 1)), row_sums))))
print(" ".join(list(map(lambda x: str(round(x / 2, 1)), col_sums))))
print(round(sum(row_sums) / 8, 1))