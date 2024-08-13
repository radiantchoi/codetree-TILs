let n = Int(readLine()!)!

var rows = Array(repeating: 0, count: 2 * n)
var front = 1
var back = rows.count - 2

var beginning = true
var beginningNumber = 1

rows[0] = n
rows[rows.endIndex - 1] = n

while front < back {
    if beginning {
        rows[front] = beginningNumber
        rows[back] = beginningNumber
    } else {
        rows[front] = n - beginningNumber
        rows[back] = n - beginningNumber
        beginningNumber += 1
    }

    beginning.toggle()
    front += 1
    back -= 1
}

for row in rows {
    let result = Array(repeating: "*", count: row)
    print(result.joined(separator: " "))
}