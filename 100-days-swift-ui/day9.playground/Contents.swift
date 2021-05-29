import UIKit

struct User {
    var username: String
    
    
}

extension User {
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "guille"

var user2 = User(username: "test")


//struct Person {
//    var name: String
//    init(name: String) {
//        print("\(name) was born!")
//        self.name = name
//
//    }
//}
//
//var p = Person(name: "test2")

struct FamilyTree {
    var name: String
    init(name: String) {
        self.name = name
        print("Creating family tree \(name)!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree(name: "Wood")
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")
ed.familyTree


struct Student {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)
print(type(of: ed2).classSize)

