//: [Previous](@previous)

import Foundation

/*
 Do two strings contain the same characters?

    Write a function that accepts two String parameters, and returns true if they contain the same
    characters in any order taking into account letter case.

 Sample input and output

    • The strings “abca” and “abca” should return true.
    • The strings “abc” and “cba” should return true.
    • The strings “ a1 b2 ” and “ b1 a2 ” should return true. • The strings “abc” and “abca” should return false.
    • The strings “abc” and “Abc” should return false.
    • The strings “abc” and “cbAa” should return false.
    • The strings “abcc” and “abca” should return false.

 */


func challenge3a(inputA: String, inputB: String) -> Bool {

    let sortedFirstInput = inputA.sorted()
    let sortedSecondInput = inputB.sorted()

    return sortedFirstInput == sortedSecondInput

}

print(challenge3a(inputA: "abcc", inputB: "abcc"))
//: [Next](@next)
