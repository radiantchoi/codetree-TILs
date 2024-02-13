n = int(input())
numbers = list(map(int, input().split()))

for i in range(1, n):
    j = i - 1
    key = numbers[i]

    while j >= 0 and numbers[j] > key:
        numbers[j+1] = numbers[j]
        j -= 1
    
    numbers[j+1] = key

print(" ".join(list(map(str, numbers))))