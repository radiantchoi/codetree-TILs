let letters = readLine()!.map { String($0) }
var storage = [String: Int]()

for letter in letters {
    if storage[letter] != nil {
        storage[letter]! += 1
    } else {
        storage[letter] = 1
    }
}

var result = [String]()
for letter in letters {
    if storage[letter] != nil && storage[letter] == 1 {
        result.append(letter)
        break
    }
}

print(result.isEmpty ? "None" : result[0])