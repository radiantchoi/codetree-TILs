let n = Int(readLine()!)!

for i in 1...n {
    print(String(repeating: "*", count: i))
    print("")
}

for j in (1..<n).reversed() {
    print(String(repeating: "*", count: j))
    if j > 1 {
        print("")
    }
}