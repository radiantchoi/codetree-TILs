import Foundation

let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

var gross = 0
for n in numbers[0]...numbers[1] {
    if n % 6 == 0 && n % 8 != 0 {
        gross += n
    }
}

print(gross)