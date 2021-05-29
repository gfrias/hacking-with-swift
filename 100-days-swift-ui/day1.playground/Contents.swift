import UIKit

var greeting = "Hello, playground"
greeting = "Goodbye"


var population = 17_000_000
print(log(Double(population))/log(10.0))

var str1 = """
The quick brown fox \
jumps over the lazy \
dog
"""
print(str1)


extension String.StringInterpolation {
    mutating func appendInterpolation(format value: Int) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
    mutating func appendInterpolation(_ value: Date) {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        
        let dateString = formatter.string(from: value)
        appendLiteral(dateString)
    }
}

let age = 37
print("Hello, I'm \(format:age)")

print("Today's date is \(Date())")
