import Cocoa

var greeting = "Hello, playground"

// 1. Create a function to add two integers and returns an integer value.

func addition() {
    
    let num1 = 4
    let num2 = 5
    
    if (num1 == num1 || num2 == num2){
        
        let num3 = num1 + num2
        
        print(num3)
        
        
    }
}
addition()


// 2. What Causes an Error in This Piece of Code? How Could You Fix It?

/* let n1: Int = 1
let n2: Float = 2.0
let n3: Double = 3.34

var result = n1 + n2 + n3
 
*/

// Fixed

let newN1: Float = 1.0
let newN2: Float = 2.0
let newN3: Float = 3.34

var newResult = newN1 + newN2 + newN3

print(newResult)

// 3. What Does init() Do in Swift?
 // An initializer allows you to change the value of stored properties inside of a class, structure, or enumeration.

// 4. What Are Protocols in Swift? Give an Example?
 // A protocol is a blueprint of a method or property

protocol school {
    
    //blueprint of a property
    var student: String { get }
    
    //bleprint of a method
    func firstDayOfSchool()
}

//Conform class to Greet Protocol

class freshman : school {
    
    var student: String = "Sobek"
    
    func firstDayOfSchool() {
        print("Greetings my student,")
    }
    
    
}

var emp1 = freshman()
emp1.firstDayOfSchool()
print(emp1.student)

// 5. What is the Double Question Mark Operator?
 // It's the symbol for the nil coalescing operator that unwraps an optional if it has a value or provides a default if the optional is empty

// 6. What Is the Guard Statement?
 // Transfers control out of a scope if one or more conditions are not met.

// 7. What Are the Three Primary Collection Types in Swift?
 // Arrays, Sets, and Dictionaries

// 8. What’s the Difference Between Structures and Classes?
 //Class is a reference type
 //Struct is a value type
 //Class supports Inheritance  & Struct doesn not support Inheritance

// 9. What is Optional Chaining?
 // Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil

// 10. What Is Optional Binding?
  // Optional binding is a mechanism built into Swift to safely unwrap optionals

// 11. What Is an In-Out Parameter in Swift? Give an example?
 // Swift inout parameter is a parameter that can be changed inside the function where it's passed into.

func inAndOut(number: inout Int) {
    
    if number == 5 {
        number = 453543
    }
}

var newNumber = 5

print("Before: \(newNumber)")

inAndOut(number: &newNumber)

print("After: \(newNumber)")

// 12. Is It Possible to Give a Default Value to a Function Parameter?
   // Yes

// 13. What Is Force Unwrapping? When Should You Use It? Give an example?
 // force unwrapping is used to convert one data type into another data type by placing the exclamation symbol "!" at the end of the data type in a variable. It should only be used when you're sure that the program won't crash from attempting to convert a variable that can't be converted.
 // Example
let num1: String = "9"
let num2 = Int(num1)!
print(num2)

// 14. What Does the Mutating Keyword Do? Give an example?

 // It changes any property within its enclosing value.

struct Example {
    var weight = 0.0
    
    mutating func newWeight() {
        weight = weight * 2.5
        
        print("Heavier weight: \(weight)")
    }
}

var scale = Example()
scale.weight = 345
scale.newWeight()

// 15. What Is a Deinitializer? How to Create One?

 // Deinitialization is a process to deallocate class instances when they're no longer needed. This frees up the memory space occupied by the system.

class deinitializer {
    
 // create deinitializer
  deinit {
    // perform deinitialization
    
  }
}

// 16. What is a Protocol in swift?

 // Protocols are blueprints of methods or properties


// 17. What’s the difference between a protocol and a class in Swift?

 // Objects give you the ability to create classes and protocols are just type definitions.

// 18. Can You Fix the Issue in this Code?

/* Can You Fix the Issue in this Code?
       struct Apple {

}

func pick(apple: Apple?) {
  guard let apple = apple else {
    print("No apple found!")
  }
  print(apple)
}
 */

// fixed

struct Apple {
    

}

func pick(apple: Apple?) {
  guard let apple = apple else {
    print("No apple found!")
    return
  }
  print(apple)
}

// 19. How to inherit multiple protocols in a same class? Give an example?

protocol newShoes {
    var color:Int { get }
}

//inherit Car protocol
protocol nameBrand : newShoes {
    var name: String { get }
}


class Jordans : nameBrand {
    
    var name: String = ""
    
    var color: Int = 0

    
}

var Jordan10s = Jordans()

Jordan10s.name = "Concords"
Jordan10s.color = 9

print("Shoe name: \(Jordan10s.name)")
print("Shoe color: \(Jordan10s.color)")

// 20. How to append one array to another array in Swift?

var first = ["John", "Paul"]
let second = ["George", "Ringo"]

var third = first + second

print(third)










