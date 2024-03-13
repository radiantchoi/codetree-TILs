from sortedcontainers import SortedDict

n = int(input())
storage = SortedDict()

for _ in range(n):
    word = input()
    storage[word] = storage.get(word, 0) + 1

for item in storage.keys():
    print("{} {:.4f}".format(item, storage[item] / n * 100))