// 1. Perform basic arithmetic operations
let a = 20
let b = 10
print("Addition: \(a + b)")
print("Subtraction: \(a - b)")
print("Multiplication: \(a * b)")
print("Division: \(a / b)")

// 2. Use compound assignment operators
var value = 50
value += 10
value -= 5
value *= 2
value /= 3
print("Modified value: \(value)")

// 3. Evaluate expressions with precedence
let X = 5, Y = 10, Z = 3
print("Result of (X + Y * Z): \(X + Y * Z)")
print("Result of ((X + Y) * Z): \((X + Y) * Z)")

// 4. Convert Int to Double and perform multiplication
let intValue = 8
let doubleValue = Double(intValue)
let result = doubleValue * 2.5
print("Result: \(result)")

// 5. Convert Double to Int and return integer part
let decimalValue = 7.89
let integerPart = Int(decimalValue)
print("Integer part: \(integerPart)")

// 6. Check if a number is even or odd
let number = 17
if number % 2 == 0 {
    print("\(number) is even")
} else {
    print("\(number) is odd")
}

// 7. Classify score into grades
let score = 85
if score >= 90 {
    print("Grade: A")
} else if score >= 80 {
    print("Grade: B")
} else if score >= 70 {
    print("Grade: C")
} else if score >= 60 {
    print("Grade: D")
} else {
    print("Grade: F")
}

// 8. Check username and password
let username = "admin"
let password = "1234"
if username == "admin" && password == "1234" {
    print("Login successful")
} else {
    print("Invalid username or password")
}

// 9. Display day of the week
let dayNumber = 3
switch dayNumber {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
case 4: print("Thursday")
case 5: print("Friday")
case 6: print("Saturday")
case 7: print("Sunday")
default: print("Invalid day")
}

// 10. Determine the largest of three integers
let num1 = 12, num2 = 45, num3 = 33
if num1 >= num2 && num1 >= num3 {
    print("Largest number: \(num1)")
} else if num2 >= num1 && num2 >= num3 {
    print("Largest number: \(num2)")
} else {
    print("Largest number: \(num3)")
}

// 11. Check voting eligibility
let age = 20
let isCitizen = true
if age >= 18 && isCitizen {
    print("Eligible to vote")
} else {
    print("Not eligible to vote")
}

// 12. Check discount eligibility
let isStudent = true
let isSenior = false
if isStudent || isSenior {
    print("Eligible for discount")
} else {
    print("Not eligible for discount")
}

// 13. Evaluate constants
let number2 = 1000
let isSmallNumber = number2 < 10
let speedLimit = 65
let currentSpeed = 72
let isSpeeding = currentSpeed > speedLimit
print("isSmallNumber: \(isSmallNumber), isSpeeding: \(isSpeeding)")
print("The type of these constants is Bool.")

// 14. Classify age into categories
let personAge = 25
switch personAge {
case 0...12: print("Child")
case 13...19: print("Teenager")
case 20...64: print("Adult")
default: print("Senior")
}

// 15. Check if it's a weekday or weekend
let dayOfWeek = "Saturday"
switch dayOfWeek {
case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
    print("It's a weekday")
case "Saturday", "Sunday":
    print("It's a weekend")
default:
    print("Invalid day")
}
