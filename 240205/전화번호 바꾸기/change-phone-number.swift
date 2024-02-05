import Foundation

var number = readLine()!.components(separatedBy: "-")
var temp = number[1]
number[1] = number[2]
number[2] = temp

print(number.joined(separator: "-"))