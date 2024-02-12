n = int(input())
numbers = list(map(int, input().split()))

approved = True

while True:
    approved = True
    for i in range(n-1):
        for j in range(i+1, n):
            if numbers[i] > numbers[j]:
                temp = numbers[i]
                numbers[i] = numbers[j]
                numbers[j] = temp
                approved = False

    if approved:
        break

print(" ".join(list(map(str, numbers))))