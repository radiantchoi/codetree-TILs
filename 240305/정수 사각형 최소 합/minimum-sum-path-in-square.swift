import Foundation

let number = Int(readLine()!)!

var grid = [[Int]]()

for _ in 0..<number {
    let row = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
    grid.append(row)
}

var dpGrid = Array(repeating: Array(repeating: 0, count: number), count: number)

dpGrid[0][number - 1] = grid[0][number - 1]

for i in (0..<number - 1).reversed() {
    dpGrid[0][i] = grid[0][i] + dpGrid[0][i+1]
}

for j in 1..<number {
    dpGrid[j][number - 1] = grid[j][number - 1] + dpGrid[j - 1][number - 1]
}

for k in 1..<number {
    for l in (0..<number - 1).reversed() {
        dpGrid[k][l] = grid[k][l] + min(dpGrid[k-1][l], dpGrid[k][l+1])
    }
}

print(dpGrid[number - 1][0])