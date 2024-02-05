import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

var result = [String]()
for n in numbers[1]...numbers[0] {
    if n % 2 == 1 {
        result.append(String(n))
    }
}

print(result.reversed().joined(separator: " "))