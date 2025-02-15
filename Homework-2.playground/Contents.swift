//Task 1: Functions
//
//Objective: Practice recursion and functions.
//
//Implement the following function that calcualtes factorial.
//
//If the input is nil, the function should return nil.
//If the input is less than 0, print an error message and return nil.
//Otherwise, return the factorial of the number using recursion.
func calcFactorial(n: Int?) -> Int? {
    guard let num = n else {
        return nil
    }
    
    if num < 0 {
        print("Error message")
        return nil
    }
    
    if num == 0 || num == 1 {
        return 1
    }
    
    return num * calcFactorial(n: num - 1)!
}

print(calcFactorial(n: 3) ?? "Nill")


//Task 2: Working With Arrays and custom Structures
//
//Objective: Practice using arrays and structure.
//
//Create a structure Student. It should have a name: String and grades: [Double]
//
//Implement a function averageGrade(for: Student, inClass: [String: Student]) -> Double. Implement a function bestStudent(for: Student, inClass: [String: Student]) -> (Student, Double) which finds the best student with higher average grade in a list of students.
struct Student {
    var name: String
    var grades: [Double]
}

let students = [
    "Alice": Student(name: "Alice", grades: [5.5, 3.5, 5.75]),
    "Bob": Student(name: "Bob", grades: [5.25, 3.75, 5.75])
]

func averageGrade(for student: Student, inClass: [String: Student]) -> Double {
    let sum = student.grades.reduce(0, +)
    return student.grades.isEmpty ? 0.0 : sum / Double(student.grades.count)
}

func bestStudent(for student: Student, inClass: [String: Student]) -> (Student, Double) {
    var topStudent = student
    var highestAvg = averageGrade(for: student, inClass: inClass)
    
    for (_, student) in inClass {
        let avg = averageGrade(for: student, inClass: inClass)
        if avg > highestAvg {
            topStudent = student
            highestAvg = avg
        }
    }
    
    return (topStudent, highestAvg)
}

if let anyStud = students["Bob"] {
    let (bestStud, avgGrade) = bestStudent(for: anyStud, inClass: students)
    print("Best student: \(bestStud.name) with an average grade of \(avgGrade)")
} else {
    print("No students in the class.")
}

//Task 3: Find the longest word in a list of words using recursion
//
//Objective: Practice arrays and functions.
//
//Example:

func findLongestWord(in words: [String?]) -> String? {
    // TODO:
    if words.isEmpty {
        return nil
    }
    
    let first = words[0] ?? ""
    let other = Array(words.dropFirst())
    
    if let otherLongest = findLongestWord(in: other) {
        return first.count >  otherLongest.count ? first : otherLongest
    }
    else {
        return first
    }
    
}

let words: [String?] = ["Hello", "World", "Bla", "Blablajsaa", "sanjfjksnffsdn"]
if let longestWord = findLongestWord(in: words) {
    print("The longest word is: \(longestWord)")
}
//Task 4: Shopping List
//
//Objective: Practice structures, methods, getters and dictionary.
//
//Create a structure ShoppingItem with the following properties:
//
//name
//quantity
//isPurchased
//Write a structure ShoppingList with the following props and functionalities:
//
//A dictionary of items. The name of the item is used as a key.
//A method addItem(item: ShoppingItem).
//A method markAsPurchased(item: ShoppingItem).
//A method markAsPurchased(itemName: String).
//A method listUnpurchasedItems() -> [ShoppingItems].
struct ShoppingItem {
    var name: String
    var quantity: Int
    var isPurchased: Bool
    
    init(name: String, quantity: Int, isPurchased: Bool = false) {
        self.name = name
        self.quantity = quantity
        self.isPurchased = isPurchased
    }
}

struct ShoppingList {
    var items: [String: ShoppingItem] = [:]
    
    mutating func addItem(item: ShoppingItem) {
        items[item.name] = item
    }
    
    mutating func markAsPurchased(item: ShoppingItem) {
        if var purItem = items[item.name] {
            purItem.isPurchased = true
            items[item.name] = purItem
        }
    }
    
    mutating func markAsPurchased(itemName: String) {
        if var purItem = items[itemName] {
            purItem.isPurchased = true
            items[itemName] = purItem
        }
    }
    
    func listUnpurchasedItems() -> [ShoppingItem] {
        return items.values.filter { !$0.isPurchased }
    }
}

var shoppingList = ShoppingList()

shoppingList.addItem(item: ShoppingItem(name: "Apples", quantity: 5))
shoppingList.addItem(item: ShoppingItem(name: "Bananas", quantity: 3))
shoppingList.markAsPurchased(itemName: "Apples")

let unpurchased = shoppingList.listUnpurchasedItems()

for item in unpurchased {
    print("Unpurchased item: \(item.name), Quantity: \(item.quantity)")
}
