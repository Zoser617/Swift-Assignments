import Cocoa
import Darwin


// Exercise 15
let player = ("James Mills", 33)

// Exercise 16
let name = player.0
let number = player.1
print(name, number)

// Exercise 17
let v1 = Int()
var v2: Int!
var v3: Int?
let v4: Int? = 8 // constants can be optionals aftrer they've been initialized
let v5: Int! = 9 // constants can be optionals aftrer they've been initialized
print(v1, v2, v3, v4, v5)

// Exercise 18
let value: Int? = 17
let banana: Int! = value // Had to be turned into an optional by adding a question mark or exclamation point to work.
print(banana)

// Exercise 19
// An error message will occur because value2 doesn't have a value

// Exercise 20
let value2: Int? = 3 // Assign a value to the constant
let banana2: Int = value2!
print(banana2)

// Exercise 21
var sum = 2 + 2
if (sum == sum) {
    
    print("The tripled sum  is \(sum * 3)")
}

// Exercise 22
var set1 = [1, 3, 5]

if (set1[2] == 5) {
    print("True")
}
else {
    print("False")
}

// Exercise 23
var array1 = [5, 4, 3, 2, 1]
print(array1.sorted())

// Exercise 24
var a1 = [1, 2, 3]
a1.remove(at:2)
a1.remove(at:1)
a1.insert (2, at:0)
a1.insert (3, at:1)
print(a1)

// Exercise 25
var setSum = [1, 2, 3, 4]
var setTotal = setSum.reduce(0, +)
print(setTotal)

// Exercise 26
func absolute(x: Int) -> Int {
    if x > 51
     {
        return (x - 51) * 2
     }
    else
     {
        return 51 - x
     }
}

print(absolute(x: 4))

// Exercise 27
func p1(x: Int, y: Int) -> Bool {
    if x + y == 20 || x == 20 || y == 20 {
        return true
    }
    else {
        return false
    }
}

print(p1(x: 20, y: 30))

// Exercise 28
func p2(x: Int, y: Int) -> Bool {
    if x > 0 || y > 0 || x < 0 || y < 0 {
        return true
    }
    else if x < 0 || y < 0 {
    
        return true
    }
    else {
        return false
    }
}
print(p2(x: -3, y: -4))


// Exercise 29
func practice(a: Int, b: Int) -> Bool {
    if a >= 10 && a <= 30
    {
        return true
    }
    else if b >= 10 && b <= 30
    {
        return true
    }
    else
    {
        return false
    }
}
print(practice(a: 5, b: 7))


// Exercise 30
func wordProgram(word: String)-> String{
    var str = word
    
    let firstCharacter = String(str.prefix(1))
    let LastCharacter = String(str.suffix(1))
    
    str.removeFirst()
    str.removeLast()
    return LastCharacter + str + firstCharacter
}
print(wordProgram(word: "Language"))

