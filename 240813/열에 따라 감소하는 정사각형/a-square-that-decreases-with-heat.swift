let n = Int(readLine()!)!

for _ in 1...n {
    var row = [String]()

    for i in (1...n).reversed() {
        row.append(String(i))
    }

    print(row.joined(separator: " "))
}