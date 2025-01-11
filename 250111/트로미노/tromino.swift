import Foundation

let info = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let n = info[0]
let m = info[1]

var grid = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
    grid.append(row)
}

var maximum = 0

for i in 0..<n {
    for j in 0..<m {
        let possibleCoordinates = possibleIndices(i, j, n, m)
        let possibleValues = possibleCoordinates.map { coordinates in 
            coordinates.reduce(0) { $0 + grid[$1.row][$1.col] }
        }

        if possibleValues.isEmpty { continue }
        maximum = max(maximum, possibleValues.max()!)
    }
}

print(maximum)

struct Coordinate {
    let row: Int
    let col: Int

    func moveDown() -> Coordinate {
        return Coordinate(row: row + 1, col: col)
    }

    func moveLeft() -> Coordinate {
        return Coordinate(row: row, col: col - 1)
    }

    func moveRight() -> Coordinate {
        return Coordinate(row: row, col: col + 1)
    }
}


func possibleIndices(_ row: Int, _ col: Int, _ n: Int, _ m: Int) -> [[Coordinate]] {
    let base = Coordinate(row: row, col: col)

    let baseCoordinates: [[Coordinate]] = [
        [
            base,
            base.moveDown(),
            base.moveDown().moveDown()
        ],
        [
            base,
            base.moveRight(),
            base.moveRight().moveRight()
        ],
        [
            base,
            base.moveLeft(),
            base.moveDown()
        ],
        [
            base,
            base.moveDown(),
            base.moveDown().moveLeft(),
        ],
        [
            base,
            base.moveDown(),
            base.moveDown().moveRight(),
        ],
        [
            base,
            base.moveRight(),
            base.moveDown()
        ]
    ]

    let possibleCoordinates = baseCoordinates.filter { coordinates in 
        coordinates.filter { (0..<n) ~= $0.row && (0..<m) ~= $0.col }.count == 3
    }

    return possibleCoordinates
}
