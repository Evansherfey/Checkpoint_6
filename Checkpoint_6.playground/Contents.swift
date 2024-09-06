import Cocoa

struct Car {
let model : String
let numOfSeats : Int
private var currentGear : Int {
didSet {
print("The gear is changed to \(currentGear)")
}
}
mutating func gearUp() {
if currentGear < 6 {
currentGear += 1
}
else {
print("Maximum gear reached")
}
}
mutating func gearDown() {
if currentGear < 2 {
print("Minimum gear reached")
}
else{
currentGear -= 1
}
}
init(model: String, numOfSeats: Int) {
self.model = model
self.numOfSeats = numOfSeats
currentGear = 1
}
}
var Toyota = Car(model: "Toyota", numOfSeats: 4)
Toyota.gearUp()
Toyota.gearUp()
Toyota.gearDown()
