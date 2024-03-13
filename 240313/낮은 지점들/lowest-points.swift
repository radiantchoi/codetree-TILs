import Foundation

var storage = [Int: Int]()

let n = Int(readLine()!)!
for _ in 0..<n {
    let point = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

    if let previous = storage[point[0]] {
        storage[point[0]] = min(previous, point[1])
    } else {
        storage[point[0]] = point[1]
    }
}

print(storage.values.reduce(0, +))