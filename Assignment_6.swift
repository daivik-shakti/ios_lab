// 1. Define a Car class with properties brand, model, and year
class Car {
    var brand: String
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
}

// Create an object and print details
let myCar = Car(brand: "Toyota", model: "Corolla", year: 2020)
print("Car Details: \(myCar.brand) \(myCar.model) \(myCar.year)")

// 2. Modify Car class to include a method and computed property
extension Car {
    func displayDetails() {
        print("Brand: \(brand), Model: \(model), Year: \(year)")
    }
    
    var carAge: Int {
        return 2024 - year
    }
}

// Call method and computed property
myCar.displayDetails()
print("Car Age: \(myCar.carAge) years")

// 3. Create a subclass ElectricCar with an additional property
class ElectricCar: Car {
    var batteryCapacity: Int
    
    init(brand: String, model: String, year: Int, batteryCapacity: Int) {
        self.batteryCapacity = batteryCapacity
        super.init(brand: brand, model: model, year: year)
    }
    
    override func displayDetails() {
        super.displayDetails()
        print("Battery Capacity: \(batteryCapacity) kWh")
    }
}

let myElectricCar = ElectricCar(brand: "Tesla", model: "Model S", year: 2022, batteryCapacity: 100)
myElectricCar.displayDetails()

// 4. Define Animal and Dog classes
class Animal {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Dog: Animal {
    var breed: String
    
    init(name: String, age: Int, breed: String) {
        self.breed = breed
        super.init(name: name, age: age)
    }
}

let myDog = Dog(name: "Buddy", age: 3, breed: "Labrador")
print("Dog: \(myDog.name), Age: \(myDog.age), Breed: \(myDog.breed)")

// 5. Define Laptop and GamingLaptop classes
class Laptop {
    var brand: String
    var processor: String
    var ramSize: Int
    
    init(brand: String, processor: String, ramSize: Int) {
        self.brand = brand
        self.processor = processor
        self.ramSize = ramSize
    }
}

class GamingLaptop: Laptop {
    var graphicsCard: String
    
    init(brand: String, processor: String, ramSize: Int = 16, graphicsCard: String) {
        self.graphicsCard = graphicsCard
        super.init(brand: brand, processor: processor, ramSize: ramSize)
    }
}

let myGamingLaptop = GamingLaptop(brand: "Asus", processor: "i7", graphicsCard: "RTX 3080")
print("Gaming Laptop: \(myGamingLaptop.brand), \(myGamingLaptop.processor), \(myGamingLaptop.ramSize)GB RAM, \(myGamingLaptop.graphicsCard)")

// 6. Check if numbers exist in an array
var numbers = [1, -3, 50, 72, -95, 115]
print(numbers.contains(72)) // true
print(numbers.contains(95)) // false

// 7. Create an array with 20 elements defaulting to 0
var myArray = Array(repeating: 0, count: 20)
print(myArray)

// 8. Check if fruits array is empty
var fruits = ["Apple", "Banana", "Mango"]
print(fruits.isEmpty ? "Array is empty" : "Array has \(fruits.count) elements")

// 9. Modify cricketers array
var cricketers = ["Sachine", "Rahul", "Rohit", "Virat"]
cricketers[0] = "Yuvraj"
cricketers.append("Shubhaman")
cricketers += ["Ravindra", "Hardik"]
cricketers.insert("Suresh", at: 5)
cricketers.remove(at: 4)
cricketers.removeLast()
print(cricketers)

// 10. Access elements in nameAge array
var nameAge = [["Sachine", "Rahul", "Rohit"], [45, 40, 36]]
print("First cricketer: \(nameAge[0][0]), Age: \(nameAge[1][0])")

// 11-14 Dictionary operations
var scores = ["Sachine": 50000, "Hardik": 4000, "Ravindra": 8000]
scores["Virat"] = 25000
let oldScore = scores.updateValue(9000, forKey: "Hardik")
print("Old score of Hardik: \(oldScore!)")
let removedScore = scores.removeValue(forKey: "Sachine")
print("Removed Sachine's score: \(removedScore!)")
print(scores)
let playerNames = Array(scores.keys)
let playerScores = Array(scores.values)
print(playerNames, playerScores)

// 15. Print city names
let cities = ["New York", "London", "Tokyo", "Delhi", "Paris"]
for city in cities {
    print(city)
}

// 16. Calculate factorial
var num = 5
var factorial = 1
for i in 1...num {
    factorial *= i
}
print("Factorial of \(num) is \(factorial)")

// 17. Iterate dictionary with vehicle info
let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehicle, wheels) in vehicles {
    print("\(vehicle) has \(wheels) wheels")
}

// 18. Check if number is prime
var primeNum = 17
var isPrime = primeNum > 1
var i = 2
while i * i <= primeNum {
    if primeNum % i == 0 {
        isPrime = false
        break
    }
    i += 1
}
print(isPrime ? "Prime" : "Not prime")

// 19. Reverse an integer
var number = 1234
var reversed = 0
while number > 0 {
    reversed = reversed * 10 + number % 10
    number /= 10
}
print("Reversed number: \(reversed)")

// 20. Check if number is an Armstrong number
var armstrongNum = 153
var sum = 0, temp = armstrongNum
let digits = String(armstrongNum).count
while temp > 0 {
    let digit = temp % 10
    sum += Int(pow(Double(digit), Double(digits)))
    temp /= 10
}
print(sum == armstrongNum ? "Armstrong Number" : "Not an Armstrong Number")
