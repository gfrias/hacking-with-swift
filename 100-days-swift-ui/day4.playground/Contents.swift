import UIKit

let count = 1...10

for number in count {
    print(number)
}

var i = 0
while i < 10 {
    print("bla")
    i += 1
}

i = 0
repeat {
    print(i)
    break
} while i <= 20


outerLoop: for i in 1...10 {
    for j in 1...10 {
        let prod = i*j
        print("\(i)*\(j)=\(prod)")
        if prod == 50 {
            break outerLoop
        }
    }
}
