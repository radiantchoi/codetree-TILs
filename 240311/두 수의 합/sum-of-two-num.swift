import Foundation

let orders = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
let numbers = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

var storage = [Int: Int]()

for number in numbers {
    // 숫자의 등장 횟수만 일단 다 기록한다
    // 각각의 숫자에 대해 대응하는 순서쌍이 있다면 곱한다
    if storage[number] != nil {
        storage[number]! += 1
    } else {
        storage[number] = 1
    }
}

var result = 0

func triangle(_ number: Int) -> Int {
    var table = [1]
    
    if number > 1 {
        for n in 2...number {
            table.append(n + table[n-2])
        }
    }
    
    return table[table.count - 1]
}

for number in storage.keys {
    let opposite = orders[1] - number
    
    if storage[opposite] != nil {
        if number == opposite {
            let occurence = storage[number]!
            result += triangle(occurence - 1)
        } else {
            let cases = storage[opposite]! * storage[number]!
            result += cases
        }
        
        storage[opposite] = 0
        storage[number] = 0
    }
}

print(result)