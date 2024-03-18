n, k = map(int, input().split())

orders = []

for _ in range(k):
    orders.append(list(map(int, input().split())))

seat = list(range(1, n+1))

pos = {}
for person in seat:
    pos[person] = set([person])

loops = 0
while loops < 3:
    for order in orders:
        front = seat[order[0] - 1]
        back = seat[order[1] - 1]

        seat[order[1] - 1] = front
        seat[order[0] - 1] = back

        front_seats = pos[front]
        front_seats.add(order[1])
        pos[front] = front_seats

        back_seats = pos[back]
        back_seats.add(order[0])
        pos[back] = back_seats
    
    loops += 1

for n in range(1, n+1):
    print(len(pos[n]))