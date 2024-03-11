import Foundation

let orderNumber = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let numbers = readLine()!.components(separatedBy: " ")
let wanteds = readLine()!.components(separatedBy: " ")

var storage = [String: Int]()

for number in numbers {
    if storage[number] != nil {
        storage[number]! += 1
    } else {
        storage[number] = 1
    }
}

var result = [String]()

for wanted in wanteds {
    if let item = storage[wanted] {
        result.append(String(item))
    } else {
        result.append("0")
    }
}

print(result.joined(separator: " "))