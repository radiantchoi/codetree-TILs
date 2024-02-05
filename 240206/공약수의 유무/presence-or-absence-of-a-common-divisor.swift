import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
var result = [String]()

for n in numbers[0]...numbers[1] {
    if 1920 % n == 0 && 2880 % n == 0 {
        result.append(String(n))
        break
    }
}

print(result.isEmpty ? 0 : 1)