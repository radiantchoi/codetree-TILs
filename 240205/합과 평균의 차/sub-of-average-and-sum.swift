import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let sum = numbers.reduce(0, +)
let average = sum / 3

print(sum)
print(average)
print(sum - average)