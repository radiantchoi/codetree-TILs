from sortedcontainers import SortedDict

n = int(input())
storage = SortedDict()

for _ in range(n):
    word = input()
    storage[word] = storage.get(word, 0) + 1

for word in storage.keys():
    print("{} {}".format(word, storage[word]))