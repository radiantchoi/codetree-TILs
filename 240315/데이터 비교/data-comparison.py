n = int(input())
first_numbers = list(map(int, input().split()))
first_set = set(first_numbers)

m = int(input())
second_numbers = list(map(int, input().split()))

result = []
for number in second_numbers:
    if number in first_set:
        result.append("1")
    else:
        result.append("0")

print(" ".join(result))