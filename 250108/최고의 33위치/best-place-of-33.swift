import Foundation

let n = Int(readLine()!)!
var grid = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
    grid.append(row)
}

var result = 0

for i in 0..<n-2 {
    for j in 0..<n-2 {
        let value = gridIndices(i, j).map { grid[$0.0][$0.1] }.reduce(0, +)
        result = max(result, value)
    }
}

print(result)

func gridIndices(_ startingRow: Int, _ startingCol: Int) -> [(Int, Int)] {
    var result = [(Int, Int)]()

    let rows = Array(startingRow...startingRow+2)
    let cols = Array(startingCol...startingCol+2)

    for row in rows {
        for col in cols {
            result.append((row, col))
        }
    }

    return result
}