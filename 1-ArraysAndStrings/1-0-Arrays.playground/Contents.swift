// - Arrays in Swift are by default actually ArrayLists
    // - This means that you can append values to the end of the list in Constant Time
    // - When a value is attempted to be appended to a "full" ArrayList, it doubles in size
// - Can create an array of specific size using reserveCapacity(_:)
    // - var sizedArray: [Int] = []
    // - sizedArray.reserveCapacity(5)

//Creating arrays
var inlineArray = ["One", "Two", "Three"]
var emptyArray: [Int] = []

//Can create an array with default values
var digitCounts = Array(repeating: 0, count: 10)
print("initialised default array: \(digitCounts)")

//Iterate through an array
for _ in digitCounts {
    //do x
}
