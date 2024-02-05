import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
var current = numbers[0]

var result = [String]()
while current <= numbers[1] {
    result.append(String(current))
    current += 2
}

print(result.joined(separator: " "))