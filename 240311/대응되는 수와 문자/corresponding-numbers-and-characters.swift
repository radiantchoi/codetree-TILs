import Foundation

let orders = readLine()!.components(separatedBy: " ").compactMap { Int($0) }
var storage = [String: Int]()
var reverseStorage = [Int: String]()

for i in 1...orders[0] {
    let letter = readLine()!
    storage[letter] = i
    reverseStorage[i] = letter
}

for _ in 0..<orders[1] {
    let letter = readLine()!
    
    if let number = Int(letter) {
        print(reverseStorage[number]!)
    } else {
        print(storage[letter]!)
    }
}