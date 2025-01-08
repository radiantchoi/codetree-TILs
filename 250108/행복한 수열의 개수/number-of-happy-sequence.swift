import Foundation

let info = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let n = info[0]
let m = info[1]

var grid = [[String]]()

for _ in 0..<n {
    let row = readLine()!.components(separatedBy: " ")
    grid.append(row)
}

var result = 0

for i in 0..<n {
    var isHappy = false

    for j in 0..<n - m + 1 {
        let slice = grid[i][j..<j+m]
        if Set(slice).count == 1 {
            isHappy = true
            break
        }
    }

    if isHappy {
        result += 1
        continue
    }
}

for j in 0..<n {
    var isHappy = false

    for i in 0..<n - m + 1 {
        let slice = grid[i..<i+m].map { $0[j] }
        if Set(slice).count == 1 {
            isHappy = true
            break
        }
    }

    if isHappy {
        result += 1
        continue
    }
}

print(result)