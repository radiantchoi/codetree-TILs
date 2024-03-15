storage = set()

n = int(input())
for _ in range(n):
    command, number = input().split()
    if command == "add":
        storage.add(number)
    elif command == "remove":
        storage.remove(number)
    elif command == "find":
        if number in storage:
            print("true")
        else:
            print("false")