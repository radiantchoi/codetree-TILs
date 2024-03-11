import Foundation

let orderNumber = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let wanteds = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

var storage = [Int: Int]()

for number in numbers {
    if storage[number] != nil {
        storage[number]! += 1
    } else {
        storage[number] = 1
    }
}

var result = [String]()

for wanted in wanteds {
    if let occurence = storage[wanted] {
        result.append(String(occurence))
    } else {
        result.append("0")
    }
}

print(result.joined(separator: " "))