_ = int(input())
first_numbers = input().split()
_ = int(input())
second_numbers = input().split()

criteria = set(first_numbers)
for number in second_numbers:
    if number in criteria:
        print("1")
    else:
        print("0")