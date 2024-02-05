var result = true

while let data = readLine(), let number = Int(data) {
    if number % 3 != 0 {
        result = false
        break
    }
}

print(result ? 1 : 0)