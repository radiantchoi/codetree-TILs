let n = Int(readLine()!)!

var storage = [String: Int]()
for _ in 0..<n {
    let data = readLine()!.map { String($0) }.sorted().joined()
    if storage[data] != nil {
        storage[data]! += 1
    } else {
        storage[data] = 1
    }
}

print(storage.values.max()!)