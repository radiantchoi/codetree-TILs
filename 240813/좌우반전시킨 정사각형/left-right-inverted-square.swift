let n = Int(readLine()!)!

var grid = Array(repeating: Array(repeating: " ", count: n), count: n)

for i in 0..<n {
    for j in 0..<n {
        grid[i][j] = String((i + 1) * (n - j))
    }
}

for row in grid {
    print(row.joined(separator: " "))
}