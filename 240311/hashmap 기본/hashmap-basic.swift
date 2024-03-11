import Foundation

let n = Int(readLine()!)!

struct CodeTreeHashmap {
    private var storage: Dictionary<String, String> = .init()
    
    static let shared = CodeTreeHashmap()
    
    private init() { }
    
    mutating func add(_ key: String, _ value: String) {
        storage[key] = value
    }
    
    mutating func remove(_ key: String) {
        storage[key] = nil
    }
    
    func find(_ key: String) {
        guard let result = storage[key] else {
            print("None")
            return
        }
        
        print(result)
    }
}

var hashmap = CodeTreeHashmap.shared

for _ in 0..<n {
    let orderData = readLine()!.components(separatedBy: " ")
    
    switch orderData[0] {
    case "add":
        let key = orderData[1]
        let value = orderData[2]
        hashmap.add(key, value)
    case "remove":
        let key = orderData[1]
        hashmap.remove(key)
    case "find":
        let key = orderData[1]
        hashmap.find(key)
    default:
        continue
    }
}