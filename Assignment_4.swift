// 1. String interpolation
let name = "Alice"
let age = 25
print("\(name) is \(age) years old.")

// 2. String interpolation with numbers
let num1 = 10
let num2 = 5
print("The sum of \(num1) and \(num2) is \(num1 + num2)")

// 3. String length
let myString = "Hello, world!"
print(myString.count)

// 4. Uppercase and lowercase
let text = "Swift Programming"
print(text.uppercased())
print(text.lowercased())

// 5. Empty string check
let emptyString = ""
if emptyString.isEmpty {
    print("String is empty")
} else {
    print("String is not empty")
}

// 6. String concatenation
let str1 = "Hello"
let str2 = " World"
print(str1 + str2)

// 7. Starts with
let word = "SwiftLanguage"
print(word.hasPrefix("Swift"))

// 8. Domain extension
let website = "www.example.com"
print(website.suffix(4))

// 9. String presence
let text2 = "The quick brown fox"
print(text2.contains("brown"))

// 10. Case-sensitive equality
let str3 = "Hello"
let str4 = "hello"
print(str3 == str4)

// 11. Case-insensitive equality
print(str3.caseInsensitiveCompare(str4) == .orderedSame)

// 12. isWeekend function
func isWeekend() -> Bool {
    let calendar = Calendar.current
    let weekday = calendar.component(.weekday, from: Date())
    return weekday == 1 || weekday == 7 // 1 is Sunday, 7 is Saturday
}
print(isWeekend())

// 13. isEven function
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
print(isEven(number: 10))

// 14. celsiusToFahrenheit function
func celsiusToFahrenheit(celsius: Double) -> Double {
    return celsius * 9/5 + 32
}
print(celsiusToFahrenheit(celsius: 25.0))

// 15. power function
func power(base: Int, exponent: Int = 2) -> Int {
    var result = 1
    for _ in 0..<exponent {
        result *= base
    }
    return result
}
print(power(base: 2, exponent: 3))

// 16. calculateArea function
func calculateArea(of length: Double, and width: Double) -> Double {
    return length * width
}
print(calculateArea(of: 10, and: 5))

// 17. greet function
func greet(person name: String) {
    print("Hello, \(name)!")
}
greet(person: "Alice")

// 18. repeatMessage function
func repeatMessage(_ message: String, _ times: Int) {
    for _ in 0..<times {
        print(message)
    }
}
repeatMessage("Swift", 3)

// 19. maxOfTwo function
func maxOfTwo(a: Int, b: Int) -> Int {
    return a > b ? a : b
}
print(maxOfTwo(a: 8, b: 12))

// 20. factorial function
func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}
print(factorial(n: 5))
