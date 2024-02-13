n = int(input())

numbers = list(map(int, input().split()))

for i in range(n-1):
    minimum = i

    for j in range(i+1, n):
        if numbers[j] < numbers[minimum]:
            minimum = j
    
    tmp = numbers[i]
    numbers[i] = numbers[minimum]
    numbers[minimum] = tmp

print(" ".join(list(map(str, numbers))))