import Foundation

let order = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

var storage = [Int: Int]()

for number in numbers {
    if storage[number] != nil {
        storage[number]! += 1
    } else {
        storage[number] = 1
    }
}

let result = storage.keys.sorted { (storage[$0]!, $0) > (storage[$1]!, $1) }[0..<order[1]].map { String($0) }.joined(separator: " ")
print(result)