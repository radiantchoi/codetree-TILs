n = int(input())
arr = []

for _ in range(n):
    message = list(input().split())

    if message[0] == "push_back":
        number = message[1]
        arr.append(number)
    elif message[0] == "pop_back":
        arr.pop()
    elif message[0] == "size":
        print(len(arr))
    elif message[0] == "get":
        index = int(message[1]) - 1
        print(arr[index])