import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Double($0) }
let sum = numbers[0] + numbers[1]
let diff = numbers[0] - numbers[1]

print(String(format: "%.2f", round(sum / diff * 100) / 100))