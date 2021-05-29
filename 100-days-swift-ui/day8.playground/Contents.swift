import UIKit

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var tennis = Sport(name: "Tennis", isOlympicSport: true)
print(tennis.name)
tennis.name = "Lawn tennis"


let chessBoxing = Sport(name: "Chessbox", isOlympicSport: false)
print(chessBoxing.olympicStatus)



struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var p = Person(name: "Guille")
p.makeAnonymous()

