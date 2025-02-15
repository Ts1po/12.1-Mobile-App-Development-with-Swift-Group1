//Objective: Practice structs, functions and protocols.
//
//Create a protocol Shape with a function area() -> Double.
//Create the following structs that conform to the Shape protocol:
//
//Rectangle with properties width and height.
//Circle with property radius.
//Implement the area function for both structs.
//
//Extra Task: Add an extension to the Shape protocol to include a description property that returns the name of the shape. Extra Task: Create a list of Shape-s and calcualte their total area.
protocol Shape {
    func area() -> Double
}

struct Rectangle: Shape {
    let width: Double
    let height: Double
    
    func area() -> Double {
        return width * height
    }
}

struct Circle: Shape {
    let radius: Double
    
    func area() -> Double {
        return .pi * radius * radius
    }
}

extension Shape {
    var description: String {
        String(describing: type(of: self))
    }
}

let rectangle = Rectangle(width: 5, height: 10)
print(rectangle.area()) // Output: 50.0
print(rectangle.description) // Output: Rectangle

let circle = Circle(radius: 7)
print(circle.area()) // Output: ~153.94
print(circle.description) // Output: Circle


//Task 2: Person and Employee
//
//Objective: Practice classes and inheritance.
//
//Create a base class Person with the following properties:
//
//name: String
//age: Int
//Add a method greet() that prints: "Hi, I'm [name] and I'm [age] years old."
//
//Create a subclass Employee that inherits from Person and adds:
//
//jobTitle: String
//Override the greet() method to include the job title: "Hi, I'm [name], a [jobTitle], and I'm [age] years old."

class Person {
    var name: String
    var age: Int
    
   init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greet() {
        print("Hi, I'm \(name) and I'm \(age) years old.")
    }
}

class Employee: Person {
    var jobTitle: String
    
    init(name: String, age: Int, jobTitle: String) {
        self.jobTitle = jobTitle
        super.init(name: name, age: age)
    }

    
    override func greet() {
        print("Hi, I'm \(name), a \(jobTitle), and I'm \(age) years old.")
    }
}

let person = Person(name: "Alice", age: 25)
person.greet() // Output: Hi, I'm Alice and I'm 25 years old.

let employee = Employee(name: "Bob", age: 30, jobTitle: "Engineer")
employee.greet() // Output: Hi, I'm Bob, a Engineer, and I'm 30 years old.


//Task 3: Power Consumption
//
//Objective: Practice protocols and extensions.
//
//Create a protocol Appliance with:
//
//A property powerUsage: Double (in watts).
//A function calculateMonthlyConsumption(hours: Double) -> Double.
//Create two structs, WashingMachine and Refrigerator, conforming to Appliance protocol.
//
//WashingMachine should have a power usage of 500 watts.
//Refrigerator should have a power usage of 100 watts.
//Add an extension to the Appliance protocol to provide a default implementation of calculateMonthlyConsumption(hours:).

protocol Appliance {
    var powerUsage: Double { get }
    func calculateMonthlyConsumption(hours: Double) -> Double
}

struct WashingMachine: Appliance {
    var powerUsage: Double { 500 }
    
    func calculateMonthlyConsumption(hours: Double) -> Double {
        return hours * powerUsage
    }
}

struct Refrigerator: Appliance {
    var powerUsage: Double {100}
    func calculateMonthlyConsumption(hours: Double) -> Double {
        return hours * powerUsage
    }
}

extension Appliance {
    func calculateMonthlyConsumption(hours: Double = 1000) -> Double {
        return powerUsage * hours
    }
}
//Extra Task: Add a computed property description in the extension that returns a string: "This appliance uses [powerUsage] watts each month."
extension Appliance {
    var description: String {
        return "This appliance uses \(powerUsage) watts each month."
    }
}


let washingMachine = WashingMachine()
print(washingMachine.description) // Output: This appliance uses 500 watts.
print(washingMachine.calculateMonthlyConsumption(hours: 30)) // Output: 15,000 watts

let refrigerator = Refrigerator()
print(refrigerator.description) // Output: This appliance uses 100 watts.
print(refrigerator.calculateMonthlyConsumption(hours: 720)) // Output: 72,000 watts


//Task 4: Library
//
//Objective: Combine structs, protocols, and functions.
//
//Create a struct Book with properties:
//
//title: String
//author: String
//Create a protocol Borrowable with:
//
//A function borrow()
//A function returnBook()
//Create a class Library with:
//
//A property books: [Book].
//Functions addBook(_:) and removeBook(_:).
//.
//
//borrow() should remove a book from the collection.
//returnBook() should add the book back.
//Extra Task: Add an extension to Library to include a method listBooks() that prints all available books.

struct Book {
    var title: String
    var author: String
}

protocol Borrowable {
    func borrow()
    func returnBook()
}

class Library: Borrowable {
    var books: [Book] = []
    var borrowedBooks: [Book] = []
    
    func addBook(_ book: Book) {
        books.append(book)
    }
    
    func removeBook(_ book: Book) {
        if let index = books.firstIndex(where: { $0.title == book.title }) {
            books.remove(at: index)
        }
    }
    
    func borrow() {
        if let borrowBook = books.first {
            removeBook(borrowBook)
            borrowedBooks.append(borrowBook)
            print("Borrowed \(borrowBook.title)")
        } else {
            print("No books available to borrow.")
        }
    }
    
    func returnBook() {
        if let returnBook = borrowedBooks.first {
            borrowedBooks.remove(at: 0)
            addBook(returnBook)
            print("Returned \(returnBook.title)")
        } else {
            print("No books to return.")
        }
    }
    
    func listBooks() {
        print("Books in Library:")
        for (index, book) in books.enumerated() {
            print("\(index + 1). \(book.title) by \(book.author)")
        }
    }
}

var library = Library()
library.addBook(Book(title: "1984", author: "George Orwell"))
library.addBook(Book(title: "To Kill a Mockingbird", author: "Harper Lee"))

library.listBooks()
// Output:
// Books in Library:
// 1. 1984 by George Orwell
// 2. To Kill a Mockingbird by Harper Lee

library.borrow()
// Output: Borrowed 1984

library.listBooks()
// Output:
// Books in Library:
// 1. To Kill a Mockingbird by Harper Lee

library.returnBook()
// Output: Returned 1984

library.listBooks()
// Output:
// Books in Library:
// 1. To Kill a Mockingbird by Harper Lee
// 2. 1984 by George Orwell


//Task 5: Vehicles
//
//Objective: Practice classes, inheritance, and extensions.
//
//Create a base class Vehicle with properties:
//
//make: String
//model: String
//fuelEfficiency: Double (in km per liter)
//Add a method calculateFuelNeeded(for distance: Double) -> Double.
//
//Create a subclass ElectricCar with an additional property:
//
//batteryCapacity: Double (in kWh)
//Override calculateFuelNeeded(for:) to calculate the energy needed in kWh based on battery efficiency (e.g., 5 km per kWh).

class Vehicle {
    var make: String
    var model: String
    var fuelEfficiency: Double
    
    init(make: String, model: String, fuelEfficiency: Double) {
        self.make = make
        self.model = model
        self.fuelEfficiency = fuelEfficiency
    }
    
    func calculateFuelNeeded(for distance: Double) -> Double {
        return distance / fuelEfficiency
    }
}

class ElectricCar: Vehicle {
    var batteryCapacity: Double
    
    init(make: String, model: String, batteryCapacity: Double, efficiencyPerKWh: Double) {
        self.batteryCapacity = batteryCapacity
        super.init(make: make, model: model, fuelEfficiency: efficiencyPerKWh)
    }
    
    override func calculateFuelNeeded(for distance: Double) -> Double {
        return distance / fuelEfficiency
    }
}

// Extra Task: Add an extension to Vehicle to include a method description() that prints the make and model.
extension Vehicle {
    var description: String {
        return "Make: \(make), Model: \(model)"
    }
}

let car = Vehicle(make: "Toyota", model: "Corolla", fuelEfficiency: 15)
print(car.calculateFuelNeeded(for: 150)) // Output: 10.0 liters

let tesla = ElectricCar(make: "Tesla", model: "Model 3", batteryCapacity: 50, efficiencyPerKWh: 5)
print(tesla.calculateFuelNeeded(for: 150)) // Output: 30.0 kWh
