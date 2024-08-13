let n = Int(readLine()!)!

var grid = Array(repeating: Array(repeating: " ", count: n), count: n)

for i in 0..<n {
    for j in 0..<n {
        if i == 0 || j == 0 || i == n - 1 || j == n - 1 {
            grid[i][j] = "*"
        } else {
            if i > j {
                grid[i][j] = "*"
            }
        }
    }
}

for row in grid {
    print(row.joined(separator: " "))
}