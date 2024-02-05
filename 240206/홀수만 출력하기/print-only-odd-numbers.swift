import Foundation

var result = [String]()
let n = Int(readLine()!)! // 사실 필요없음

while let data = readLine(), let number = Int(data) {
    if number % 3 == 0 {
        print(number)
    }
}