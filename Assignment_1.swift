// 1. Declare constant pi, variable radius, calculate circumference
let pi = 3.14159
var radius = 5
let circumference = 2 * pi * Double(radius)
print("Circumference: \(circumference)")

// 2. Calculate age using birthYear and currentYear
let birthYear = 1990
var currentYear = 2025
let age = currentYear - birthYear
print("Age: \(age)")

// 3. Declare variable marks, modify it, and observe constant behavior
var marks = 85
marks = 90
let outOfMarks = 100
// outOfMarks = 95 // This will throw an error because constants cannot be modified

// 4. Declare score variable for a game
var score = 0
print("Score is a variable because it changes as the game progresses.")

// 5. Weather app: current temperature and freezing point of water
var currentTemperature: Double = 23.5
let freezingPoint: Double = 0.0

// 6. Declare and initialize age and height with explicit type annotations
var personAge: Int = 30
var personHeight: Double = 5.9

// 7. Declare firstDecimal and secondDecimal
var firstDecimal = 3.14
var secondDecimal = 2.71

// 8. Assign boolean to decimal (will not compile)
var trueOrFalse = true
// firstDecimal = trueOrFalse // Cannot assign Bool to Double
print("Cannot assign a Bool to a Double as their types are incompatible.")

// 9. Assign string to decimal (will not compile)
var someString = "Hello"
// firstDecimal = someString // Cannot assign String to Double
print("Cannot assign a String to a Double as their types are incompatible.")

// 10. Assign whole number to decimal (will not compile)
var wholeNumber = 42
// firstDecimal = wholeNumber // Type mismatch: Int cannot be assigned to Double
print("Cannot assign an Int to a Double directly due to type safety.")

// 11. Declare name of type String without a value
var name: String
// print(name) // This will not compile as name must be initialized before use

// 12. Declare distanceTraveled, set explicit type
var distanceTraveled: Double = 0
distanceTraveled = 54.3

// 13. Declare percentCompleted and assign 34.67
var percentCompleted: Double = 0
percentCompleted = 34.67

// 15. Input name and print greeting
print("Please enter your name:")
if let userName = readLine() {
    print("Hello, \(userName)!")
}

// 16. Input two numbers and print their sum
print("Please enter the first number:")
if let firstNumberString = readLine(), let firstNumber = Int(firstNumberString) {
    print("Please enter the second number:")
    if let secondNumberString = readLine(), let secondNumber = Int(secondNumberString) {
        let sum = firstNumber + secondNumber
        print("Sum: \(sum)")
    }
}

// 17. Convert temperature from Celsius to Fahrenheit
print("Please enter the temperature in Celsius:")
if let celsiusString = readLine(), let celsius = Double(celsiusString) {
    let fahrenheit = (celsius * 9/5) + 32
    print("Temperature in Fahrenheit: \(fahrenheit)")
}
