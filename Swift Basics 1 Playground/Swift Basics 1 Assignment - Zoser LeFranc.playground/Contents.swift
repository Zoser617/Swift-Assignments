import UIKit
import Darwin

/*
 Exercise 1
 Declare a floating point variable that represents temperature and assign the current temperature to it. If you don't have a thermometer, guess the temperature. Then assign a different temperature to it. Pick one at random, it doesn't matter.
 */

var temperature: Float = 99.45
temperature = 44.98
print(temperature)

/*
 Exercise 2
 Declare a constant integer value that represents the number
 of seconds in an hour and assign that number to it on the same
 line. Then try to assign a different value to the constant. Why doesn't it work?
 */

let secondsInHour = 60
print(secondsInHour)// Cannot assign to value: 'secondsInHour' is a 'let' constant. Change 'let' to 'var' to make it mutable

/*
 Exercise 3
 Declare an integer variable with an explicit type annotation
 and then one without.
 */

var number: Int = 9
var secondNumber = 10
print (number, secondNumber)

/*
 Exercise 4
 Declare a constant integer value that represents the number of wheels of a car. Don't assign it a value on the same line. On the next line, assign a value to the constant. Why does this work?
 */

let wheels: Int =
2
print(wheels) // It works because the initial value was still on the 1st line given after the equal sign.

/*
 Exercise 5
 Declare the constant π using the name π, which you can
 type by pressing alt-p.
 */

let π = "π"
print(π)

/*
 Exercise 6
 Declare a variable using an emoji in the name. */

var 😎emoji = "anotherEmoji🤑"
print(😎emoji)

/*
 Exercise 7
 Print a variable using the print() function.
 */

var theVariable = 18
print(theVariable)

/*
 Exercise 8
 What is the maximum value that can be stored in an Int16? "-32,768 to 32,767"
 
 Write the code that prints the maximum value of the Int16
 type.
 
 What type is the constant pi in the example below? Why?
 let pi = 3 + 0.141592654
 
 Pi is a double because it stores more than 2 and up to 15 decimal places and it holds 64 bits
 */

print(32767) // The maximum value Int16

/*
 Exercise 9
 What happens if you try the following code? Why?
  type 'UInt' let myNumber: UInt = -17
 */

let myNumber: UInt = -17
// The type needs to be assigned as 'Int' because it overflows when stored into unsigned type 'UInt'

/*
 Exercise 10
 What happens if you try the following code? Why?
 let bigNumber: Int16 = 32767 + 1
 */
let bigNumber: Int16 = 32767 + 1
// this results in a stack overflow because the maximum value of an Int16 is 32767

/*
 Exercise 11
 Why does the following code not work? What do you need to
 add to it to make it work, if we absolutely want to store this
 value as an integer, i.e. 3, but we don&#39;t want to change the
 type of the
 variables?
 */
let pi = 3.141592654
let approximatePi: Int = pi
// The code doesnt't work because pi is a double and you can't convert it into an integer data type

/*
 Exercise 12
 There are two types of comments. Single-line and multiline
 comments. Write one of both.
 */
/* This is a
 a multiline comment*/

// This is a single line comment

/*
 Exercise 13
 In Swift multiline comments can be nested. Write a nested
 multiline comment. */

/* This is the first comment.
  /* This is the second, nested comment. */
This is the end. */

/*
 Exercise 14
 Write two sentences in one line.
 */

// This is a sentence. This is another sentence.
print("This is a sentence. This is another sentence.")
