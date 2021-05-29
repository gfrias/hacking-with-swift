import UIKit

func printHelp() {
    let message = """
        Welcome to MyApp!
        blablabla
"""
    
    print(message)
}
printHelp()
func foo(a: Int) {
    
}
func foo(a: Int, b:Int) {
    
}

func square(number number:Int) -> (n:Int, s:Int){
    return (n:number, s:number*number)
}

func sayHello(to name: String) {
    print(name)
}

func foo(_ a: String, _ b:String) {
    print("\(a) \(b)")
}

func sum(numbers: Int...)throws -> Int {
    var ret = 0
    for n in numbers {
        ret += n
    }
    return ret
}

print(sum(numbers:))

sayHello(to: "Guille")

let res = square(number: 8)
print(res.n)


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
    
}

func doubleInPlace(number: inout Int) {
    
    number *= 2
}

var a = 2
doubleInPlace(number: &a)
print(a)

do {
    try checkPassword("password")
} catch PasswordError.obvious {
    print("err")
}
