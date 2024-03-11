let n = Int(readLine()!)!
var storage = [String: Int]()

for _ in 0..<n {
    let word = readLine()!
    
    if storage[word] != nil {
        storage[word]! += 1
    } else {
        storage[word] = 1
    }
}

print(storage.values.max()!)