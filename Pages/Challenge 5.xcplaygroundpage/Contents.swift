//: [Previous](@previous)

import Foundation
/*
 Count the characters


 Write a function that accepts a string, and returns how many times a specific character appears, taking case into
 account.

 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.


 • The letter “a” appears twice in “The rain in Spain”.
 • The letter “i” appears four times in “Mississippi”.
 • The letter “i” appears three times in “Hacking with Swift”.
*/

func challenge5a(_ input: String, letterToFind: Character) -> Int {
    var letterCount =  0
    for letter in input {
         if letter == letterToFind {
            letterCount += 1
        }
    }
    return letterCount
}

print(challenge5a("The rain in spain", letterToFind: "a"))


func challenge5b(_ input: String, letterToFind: Character) -> Int {
    input.reduce(0) {
        $1 == letterToFind ? $0 + 1 : $0
    }
}

print(challenge5b("The rain in Spain", letterToFind: "S"))

//: [Next](@next)
