import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue"])

var name = (first: "Taylor", last: "Swift")
name.0

var name2 = ("Taylor", "Swift")

name2.0

let name3 = ("Taylor", 25)

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

print(heights["Taylor Swift"])

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Guille", default: "unknown"]

var teams = [String:String]()
teams["Paul"]

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

enum Result {
    case success
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let act = Activity.talking(topic: "football")

switch act {
case .talking(topic: let t):
    print(t)
default:
    break
}


enum Planet: String {
    case mercury
    case venus
    case earth
    case mars
}


let earth = Planet(rawValue: "earth")
earth?.rawValue
