import Foundation

let a = Int(readLine()!)!
let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

for number in numbers {
    if a > number {
        print(1)
    } else {
        print(0)
    }
}