n = int(input())
dividing = 1
result = 0

while True:
    n //= dividing
    dividing += 1
    result += 1

    if n <= 1:
        break    

print(result)