from sortedcontainers import SortedDict 

n = int(input())
storage = SortedDict()
numbers = list(map(int, input().split()))

for (index, number) in enumerate(numbers):
    if number not in storage:
        storage[number] = index + 1

for item in storage.keys():
    print("{} {}".format(item, storage[item]))