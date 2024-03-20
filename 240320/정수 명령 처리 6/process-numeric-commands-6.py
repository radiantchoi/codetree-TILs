import heapq

class PriorityQueue:
    def __init__(self):
        self.items = []
    
    def push(self, item):
        heapq.heappush(self.items, -item)
    
    def empty(self):
        return not self.items

    def pop(self):
        if self.empty():
            raise Exception("empty")
        
        return -heapq.heappop(self.items)

    def size(self):
        return len(self.items)
    
    def top(self):
        if self.empty():
            raise Exception("empty")
        
        return -self.items[0]


pq = PriorityQueue()

n = int(input())

for _ in range(n):
    order = input().split()

    if order[0] == "push":
        val = int(order[1])
        pq.push(val)
    elif order[0] == "pop":
        print(pq.pop())
    elif order[0] == "size":
        print(pq.size())
    elif order[0] == "empty":
        print(1 if pq.empty() else 0)
    elif order[0] == "top":
        print(pq.top())