import Foundation

let number = Int(readLine()!)!

var grid = [[Int]]()
for _ in 0..<number {
    let row = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
    grid.append(row)
}

var dpGrid = Array(repeating: Array(repeating: 0, count: number), count: number)

// 가로세로 첫 줄 세우기
dpGrid[0][0] = grid[0][0]
for i in 1..<number {
    dpGrid[0][i] = dpGrid[0][i-1] + grid[0][i]
    dpGrid[i][0] = dpGrid[i-1][0] + grid[i][0]
}

for i in 1..<number {
    for j in 1..<number {
        dpGrid[i][j] = max(dpGrid[i-1][j] + grid[i][j], dpGrid[i][j-1] + grid[i][j])
    }
}

print(dpGrid[dpGrid.count - 1].max()!)