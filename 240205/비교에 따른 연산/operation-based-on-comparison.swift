import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

if numbers[0] > numbers[1] {
    print(numbers[0] * numbers[1])
} else {
    print(numbers[1] / numbers[0])
}