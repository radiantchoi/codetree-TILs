import Foundation

var gross: Double = 0
var number: Double = 0

while let data = readLine(), let age = Double(data) {
    if (20..<30) ~= age {
        gross += age
        number += 1
    } else {
        break
    }
}

print(String(format: "%.2f", round(gross / number * 100) / 100))