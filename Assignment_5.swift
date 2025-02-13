// 1. Book structure with properties and displayBook function
struct Book {
    var title: String
    var author: String
    var price: Double
    var yearPublished: Int
    
    func displayBook() {
        print("Title: \(title), Author: \(author), Price: \(price), Year: \(yearPublished)")
    }
}

var myBook = Book(title: "Swift Programming", author: "John Doe", price: 29.99, yearPublished: 2020)
myBook.displayBook() // Displaying book details

// 2. Rectangle structure with calcArea function
struct Rectangle {
    var width: Double
    var height: Double
    
    func calcArea() -> Double {
        return width * height
    }
}

var myRectangle = Rectangle(width: 10.0, height: 5.0)
print("Area of rectangle: \(myRectangle.calcArea())")

// 3. Temperature structure with Fahrenheit to Celsius initializer
struct Temperature {
    var celsius: Double
    
    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) * 5 / 9
    }
}

var temp = Temperature(fahrenheit: 100.0)
print("Temperature in Celsius: \(temp.celsius)")

// 4. Student structure with default values initializer
struct Student {
    var name: String
    var rollNumber: Int
    var marks: Double
    
    init(name: String = "John", rollNumber: Int = 101, marks: Double = 85.0) {
        self.name = name
        self.rollNumber = rollNumber
        self.marks = marks
    }
}

var student1 = Student() // Using default initializer
print("Student Details: \(student1.name), \(student1.rollNumber), \(student1.marks)")

// 5. Smartphone structure with memberwise initializer
struct Smartphone {
    var brand: String
    var model: String
    var storageGB: Int
    var price: Double
}

var myPhone = Smartphone(brand: "Apple", model: "iPhone 14", storageGB: 128, price: 999.99)
print("Smartphone details: \(myPhone.brand), \(myPhone.model), \(myPhone.storageGB)GB, $\(myPhone.price)")

// 6. BankAccount structure with custom initializer
struct BankAccount {
    var accountHolder: String
    var balance: Double
    
    init(accountHolder: String, balance: Double) {
        self.accountHolder = accountHolder
        self.balance = max(balance, 500.0) // Ensures minimum balance of ₹500
    }
}

var account1 = BankAccount(accountHolder: "Alice", balance: 300.0)
var account2 = BankAccount(accountHolder: "Bob", balance: 1000.0)
print("Account 1 balance: ₹\(account1.balance), Account 2 balance: ₹\(account2.balance)")

// 7. CarDetails structure with custom initializer for year
struct CarDetails {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int? = Calendar.current.component(.year, from: Date())) {
        self.brand = brand
        self.model = model
        self.year = year ?? Calendar.current.component(.year, from: Date())
    }
}

var car1 = CarDetails(brand: "Toyota", model: "Corolla", year: 2021)
var car2 = CarDetails(brand: "Honda", model: "Civic") // Uses current year
print("Car 1: \(car1.brand), \(car1.model), \(car1.year)")
print("Car 2: \(car2.brand), \(car2.model), \(car2.year)")

// 8. BankAccount with methods deposit and withdraw
struct BankAccountMethods {
    var accountHolder: String
    var balance: Double
    
    mutating func deposit(amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
        } else {
            print("Insufficient balance")
        }
    }
}

var account = BankAccountMethods(accountHolder: "Charlie", balance: 1000.0)
account.deposit(amount: 500.0)
account.withdraw(amount: 200.0)
print("Account balance: ₹\(account.balance)")

// 9. BankAccount with mutating methods for deposit and withdraw (from 8)
struct BankAccountMutating {
    var accountHolder: String
    var balance: Double
    
    mutating func deposit(amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
        } else {
            print("Insufficient funds!")
        }
    }
}

var accountTest = BankAccountMutating(accountHolder: "Diana", balance: 500.0)
accountTest.deposit(amount: 200.0)
accountTest.withdraw(amount: 100.0)
print("Test Account balance: ₹\(accountTest.balance)")

// 10. Car structure with fuelLevel and mileage with mutating methods
struct Car {
    var fuelLevel: Double // percentage 0-100
    var mileage: Double // km per liter
    
    mutating func refuel(amount: Double) {
        fuelLevel = min(fuelLevel + amount, 100.0)
    }
    
    mutating func drive(distance: Double) {
        fuelLevel -= distance / mileage
        if fuelLevel < 0 {
            fuelLevel = 0
        }
    }
}

var myCar = Car(fuelLevel: 50.0, mileage: 15.0)
myCar.refuel(amount: 30.0)
myCar.drive(distance: 100.0)
print("Fuel level after refuel and drive: \(myCar.fuelLevel)%")

// 11. Employee structure with computed property netSalary
struct Employee {
    var name: String
    var basicSalary: Double
    
    var netSalary: Double {
        return basicSalary * 0.90 // 10% tax deduction
    }
}

var employee1 = Employee(name: "John Smith", basicSalary: 50000.0)
print("Employee net salary: ₹\(employee1.netSalary)")

// 12. Speed structure with computed properties for km/h and mph
struct Speed {
    var metersPerSecond: Double
    
    var kmPerHour: Double {
        return metersPerSecond * 3.6
    }
    
    var milesPerHour: Double {
        return metersPerSecond * 2.237
    }
}

var speed1 = Speed(metersPerSecond: 10.0)
print("Speed in km/h: \(speed1.kmPerHour), Speed in mph: \(speed1.milesPerHour)")

// 13. CarSpeed structure with willSet and didSet property observers
struct CarSpeed {
    var speed: Double {
        willSet {
            print("Current speed: \(speed), Upcoming speed: \(newValue)")
        }
        didSet {
            if speed > 120 {
                print("Warning: Speed exceeds 120 km/h!")
            }
        }
    }
}

var myCarSpeed = CarSpeed(speed: 100.0)
myCarSpeed.speed = 130.0

// 14. Create copy of structure CarSpeed using another instance
var carSpeedCopy = myCarSpeed
print("Original speed: \(myCarSpeed.speed), Copied speed: \(carSpeedCopy.speed)")

// 15. Circle structure with type properties and method
struct Circle {
    var radius: Double
    static let pi: Double = 3.14159
    
    static func Area(radius: Double) -> Double {
        return pi * radius * radius
    }
}

print("Area of circle with radius 5: \(Circle.Area(radius: 5.0))")

// 16. Customer structure with initializer
struct Customer {
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

var customer1 = Customer(name: "David", id: 12345)
print("Customer Name: \(customer1.name), ID: \(customer1.id)")

