let n = Int(readLine()!)!

func makeSquare(_ n: Int) {
    for i in 0..<n {
        print(String(repeating: "*", count: n))
    }
}

makeSquare(n)
print("")
makeSquare(n)