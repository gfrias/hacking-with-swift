import UIKit

let driving = {
    print("I am driving in my car")
}

driving()

let driving2 = { (place:String) -> String in
    return "I am driving in \(place)"
}

print(driving2("London"))

func travel(action: () -> Void) {
    print("ready to go")
    action()
    print("arrived")
}

travel(action: driving)

