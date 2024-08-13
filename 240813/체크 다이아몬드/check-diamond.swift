let n = Int(readLine()!)!

for i in 1...n {
    var row = Array(repeating: " ", count: 2 * n - 1)
    var current = n - i
    var stars = i

    while stars > 0 {
        row[current] = "*"
        current += 2
        stars -= 1
    }

    print(row.joined())
}

for j in (1..<n).reversed() {
    var row = Array(repeating: " ", count: 2 * n - 1)
    var current = n - j
    var stars = j

    while stars > 0 {
        row[current] = "*"
        current += 2
        stars -= 1
    }

    print(row.joined())
}