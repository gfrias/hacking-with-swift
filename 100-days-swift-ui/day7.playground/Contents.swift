import UIKit

//func travel(action: (String) -> Void) {
//    print("I am ready")
//    action("London")
//    print("arrived")
//}
//
//travel { (place: String) in
//    print("I am going to \(place)")
//}

//func travel(action: (String) -> String) {
//    print("I'm ready")
//    let description = action("London")
//    print(description)
//    print("arrived")
//}
//
//travel { (place:String) -> String in
//    return "I am going to \(place)"
//}
//
//travel {"bla \($0)"}

//func travel(action: (String, Int) -> String) {
//    print("Ready")
//    let description = action("London", 60)
//    print(description)
//    print("arrived")
//}
//
//travel { "I am going to \($0) at \($1) mph" }

func travel() -> (String) -> Void {
    var counter = 1
    return {
        print ("\(counter) I am going to \($0)")
        counter += 1
    }
}

let closure = travel()
closure("London")
closure("London")
closure("London")
