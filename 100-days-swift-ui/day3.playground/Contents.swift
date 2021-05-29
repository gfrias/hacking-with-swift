import UIKit

let number = 465
let isMultiple = number.isMultiple(of: 7)


let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["a", "b"]
let secondHalf = ["c", "d"]
print(firstHalf + secondHalf)
"Taylor" > "Swift"


enum Sizes: Comparable {
    case small
    case medium
    case large
}

print(Sizes.small < Sizes.medium)

let weather = "sunny"

switch(weather) {
case "sunny", "rain":
    print("auch")
default:
    print("meh")
}
