let n = Int(readLine()!)!

for i in (1...n).reversed() {
    var row = Array(repeating: " ", count: 2 * n)
    var filled = 0

    var front = 0
    var back = row.count - 1

    while filled < i {
        row[front] = "*"
        row[back] = "*"
        
        front += 1
        back -= 1
        filled += 1
    }

    print(row.joined())
}