//: [Previous](@previous)

import Foundation

/*
 Condense whitespace

    Write a function that returns a string with any consecutive spaces replaced with a single space.

 Sample input and output

    I’ve marked spaces using “[space]” below for visual purposes:
    • The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
    • The string “[space][space][space][space]a” should return “[space]a”. • The string “abc” should return “abc”.
 */


func challenge7a(_ input: String) -> String {
    var spaceRemoved = ""

    for char in input {
        if " ".count < 2 {
            spaceRemoved += String(char)
        }
    }
    return spaceRemoved
}


// Hudson's solution
func challenge7b(input: String) -> String {
   return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

// That code runs about 50% the speed of the manual solution, but you would have to be doing a heck of a lot of work in order for it to be noticeable




challenge7a(" a")
challenge7b(input: "Hello    World")
//: [Next](@next)
