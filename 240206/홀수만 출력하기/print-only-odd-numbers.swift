import Foundation

var result = [String]()
let n = Int(readLine()!)!

while let data = readLine(), let number = Int(data) {
    if number % 3 == 0 && number % 2 == 1 {
        print(number)
    }
}