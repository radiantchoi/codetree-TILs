import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let a = numbers[0]
let b = numbers[1]
let c = numbers[2]

if a < b && b < c {
    print(1)
} else {
    print(0)
}