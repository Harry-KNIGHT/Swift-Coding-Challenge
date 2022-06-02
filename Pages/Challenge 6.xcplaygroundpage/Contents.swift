//: [Previous](@previous)

import Foundation
/*
 Remove duplicate letters from a string

     Write a function that accepts a string as its input, and returns the same string just with
     duplicate letters removed.

     Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.

 Sample input and output

    • The string “wombat” should print “wombat”.
    • The string “hello” should print “helo”.
    • The string “Mississippi” should print “Misp”.
 */

// Personnal solution
func challenge6a(_ input: String) -> String {
    var usedLetter = ""

    for char in input {
        if !usedLetter.contains(char) {
            usedLetter += String(char)
        }
    }
    return usedLetter.trimmingCharacters(in: .whitespaces)
}
challenge6a("Hello Mickael ca roule ?")

// Hudson's solution
func challenge6b(_ input: String) -> String {
    var used = [Character: Bool]()

    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }

    return String(result)
}
//: [Next](@next)
