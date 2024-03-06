import Foundation

let n = Int(readLine()!)!

var grid = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
    grid.append(row)
}

var minGrid = Array(repeating: Array(repeating: 0, count: n), count: n)
minGrid[0][0] = grid[0][0]

for i in 1..<n {
    minGrid[i][0] = min(grid[i][0], minGrid[i-1][0])
}

for j in 1..<n {
    minGrid[0][j] = min(grid[0][j], minGrid[0][j-1])
}

for i in 1..<n {
    for j in 1..<n {
        minGrid[i][j] = min(grid[i][j], max(minGrid[i-1][j], minGrid[i][j-1]))
    }
}

print(minGrid[n-1][n-1])