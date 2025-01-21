import UIKit

//Task 1: Practice Loops
//Create a program that counts from 1 to 10 and prints each number. Print "Even" next to even numbers and "Odd" next to odd numbers. Provide 3 different solutions using:
//
// for in loop
for number in 1..<11 {
//    if number % 2 == 0 {
//        print("\(number) is even")
//    } else {
//        print("\(number) is odd")
//    }
    let oddOrEven = number % 2 == 0 ? "even" : "odd"
    print("\(number) is \(oddOrEven) ")
}
print("===========")
// while loop
var number = 0
while number <= 9 {
    let oddOrEven = number % 2 == 0 ? "even" : "odd"
    number += 1
    print("\(number) is \(oddOrEven)")
}
print("===========")
// repeat while
var num = 1
repeat {
    let oddOrEven = num % 2 == 0 ? "even" : "odd"
    print("\(num) is \(oddOrEven)")
    num += 1
} while num <= 10
print("========Task 2========")
//Task 2: Working With Arrays
//
//Objective: Practice using arrays and loops.
//
//Create an array of 10 favorite TV Series or movies. Loop through the items and do the following transformation:
//
//if the index of an item is divisible to 3 (no reminder) print it uppercased.
//if the index of an item is divisible to 4 (no reminder) capitalize each word.
var favouriteMovies : [String] = ["Godfather", "Goodfellas", "Scareface", "Ford v Ferrari", "Inglourious basterds", "The Imitation Game", "Once upon a time in America", "Se7en", "Kingsman: The Secret Service", "2 Fast and 2 Furious"]
for (index, movies) in favouriteMovies.enumerated() {
    if index % 3 == 0 {
        print("Index is \(index) and movie is \(movies.uppercased())")
    }
    if index % 4 == 0 {
        print("Index is \(index) and movie is \(movies.capitalized)")
    }
}
//Extra task: Add a new item to the array and print the updated list in full (all items).
print("New item array")
favouriteMovies.append("Rush")
print(favouriteMovies)

print("========Task 3========")

//Task 3: Grade Tracker
//
//Objective: Practice using dictionaries.
//Store the names of students as keys and their grades as values. Create a program to:
var grades = ["Alice": 85, "Bob": 90, "Charlie": 78]
//Print all students and their grades.
for (name, grade) in grades {
    print("\(name)'s grade is \(grade)")
}
//Add a new student and their grade to the dictionary.
grades["Lionel"] = 62
print("After grades:")
for (name, grade) in grades {
    print("\(name)'s grade is \(grade)")
}
//Find and print the grade of a specific student.
if let grade = grades["Lionel"]{
    print("Lionel's grade is \(grade)")
} else {
    print("Student with that name is not in the dictionary")
}
//Extra Task: Could you try to implemented it using array and tuple?`

print("========Task 4==========")
//Task 4: Person Details
//
//Objective: Practice using tuples.
//
//Define a tuple with the following properties: name (String), age (Int), and city (String). Print each property on a separate line.
//
var person: (name: String, age: Int, city: String) = ("bob", 30, "Tbilisi")
print("Name: \(person.name)")
print("Age: \(person.age)")
print("City: \(person.age)")
//Extra Task: Update the city in the tuple and print the updated tuple.
person.city = "batumi"
print("Updated city is \(person.city)")

print("========Task 5==========")
//Task 5: Shopping List
//
//Objective: Practice using constants and variables.
//
//Write a program to:
//
//Create a constant array of 5 shopping items. Each item should has a price. (use tuples)
let shoppingItems: [(item: String, price: Double)] = [("Milk", 2.0), ("Cheese", 5.0), ("Bread", 1.3), ("Apples", 2.3), ("Banana", 1.8)]
//Use a loop to print all items.
for (item, price) in shoppingItems {
    print("\(item) : \(price)")
}
//Create a variable for the total cost (starting at 0). Calculate and print the total cost.
var totalCost = 0.0
for (a, price) in shoppingItems {
    totalCost += price
}
print("Total cost is $\(String(format: "%.2f", totalCost))")
