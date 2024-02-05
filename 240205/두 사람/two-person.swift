import Foundation

struct Person {
    let age: Int
    let sex: Sex

    enum Sex {
        case man
        case woman 
    }
}

var persons = [Person]()

while let data = readLine()?.components(separatedBy: " "), let age = Int(data[0]) {
    let person = Person(age: age, sex: data[1] == "M" ? .man : .woman)
    persons.append(person)
}

let result = persons.filter { $0.age > 18 && $0.sex == .man }
print(result.count > 0 ? 1 : 0)