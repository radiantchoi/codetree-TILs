import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }.sorted()
print(numbers[1])