n = int(input())
numbers_data = list(input().split())
maximum_digit = max(list(map(lambda x: len(x), numbers_data)))

position = 0

while position < maximum_digit:
    temporary = [[] for _ in range(10)]

    for datum in numbers_data:
        current = len(datum) - 1 - position
        checking = 0
        if current >= 0:
            checking = int(datum[current])
            
        temporary[checking].append(datum)

    storage = []
    for data in temporary:
        storage += data

    numbers_data = storage
    position += 1

print(" ".join(numbers_data))