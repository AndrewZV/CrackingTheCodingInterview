//HashMaps in Swift use dictionaries

//Creating a dictionary
var someProtocol = [
    "one" : 1,
    "two" : 2
]

let keyExists = someProtocol["one"] != nil

if keyExists{
    print("The key is present in the dictionary")
} else {
    print("The key is not present in the dictionary")
}

someProtocol.removeValue(forKey: "two")

//Iterating through dictionary
for (key, value) in someProtocol {
    var index = value
}
