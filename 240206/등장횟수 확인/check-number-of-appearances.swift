var result = 0

while let data = readLine(), let number = Int(data) {
    if number % 2 == 0 {
        result += 1
    }
}

print(result)