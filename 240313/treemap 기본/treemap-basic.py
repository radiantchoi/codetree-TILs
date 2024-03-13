from sortedcontainers import SortedDict

storage = SortedDict()

n = int(input())

for _ in range(n):
    order = input().split()

    if order[0] == "add":
        key_piece = int(order[1])
        storage[key_piece] = order[2]
    elif order[0] == "remove":
        key_piece = int(order[1])
        storage.pop(key_piece)
    elif order[0] == "find":
        key_piece = int(order[1])
        if key_piece in storage:
            print(storage[key_piece])
        else:
            print("None")
    elif order[0] == "print_list":
        data = storage.keys()
        if not data:
            print("None")
        else:
            result = " ".join(list(map(lambda x: storage[x], data)))
            print(result)