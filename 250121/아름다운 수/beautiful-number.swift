// 1부터 4까지 총 10회까지 선택
// 각 자리의 자릿수를 카운팅하여 1 2 3 4로 나누었을 때 모두 나머지가 0이면 아름다운 수

func isBeautifulNumber(number: String) -> Bool {
    var numberOfNumbers = [1: 0, 2: 0, 3: 0, 4: 0]
    let digits = number.map { String($0) }

    var previous = digits[0]
    var isIdentical = 1

    for i in 1..<digits.count {
        let digit = digits[i]

        if digit != previous {
            if Int(previous)! != isIdentical {
                return false
            }

            previous = digit
            isIdentical = 1
        } else {
            if digit == "1" {
                previous = digit
                isIdentical = 1
            } else {
                isIdentical +=  1
            }
        }
    }

    if Int(previous)! != isIdentical {
        return false
    }

    return true
}

let n = Int(readLine()!)!

var result = 0
let numbers = ["1", "2", "3", "4"]

func choose(_ numbers: [String], _ selected: [String], _ threshold: Int, _ result: inout Int) {
    if selected.count >= threshold {
        let selectedNumber = selected.joined()

        if isBeautifulNumber(number: selectedNumber) {
            result += 1
        }

        return
    }

    for number in numbers {
        var selected = selected
        selected.append(number)

        choose(numbers, selected, threshold, &result)
    }
}

choose(numbers, [], n, &result)
print(result)