//: [Previous](@previous)

import Foundation
import Darwin

/* Find longest prefix

 Difficulty: Tricky

 Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest
 substring that prefixes all words.

 Sample input and output
 • The string “swift switch swill swim” should return “swi”. • The string “flip flap flop” should return “fl”.
 */


func challenge12a(_ input: String = "swift switch swill swim") -> String {
    let separatedBy = input.components(separatedBy: " ")
    guard let first = separatedBy.first else { return "" }
    var currentPrefix = ""
    var bestPrefix = ""

    for letter in first {
        currentPrefix.append(letter)
        for word in separatedBy {
            if !word.hasPrefix(currentPrefix) {
               return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}
print(challenge12a())

//: [Next](@next)
