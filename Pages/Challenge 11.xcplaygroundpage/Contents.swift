//: [Previous](@previous)

import Foundation

/* Three different letters

 Difficulty: Tricky

 Write a function that accepts two strings, and returns true if they are identical in length but have no more than
 three different letters, taking case and string order into account.

 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference. • The strings “Clamp” and “Crams” would return true, because there are two letter
 differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter
 differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter
 differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths. • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.

 */


func challenge10a(_ input: String, secondString: String) -> Bool {
    guard input.count == secondString.count else { return false }

    let inputArray = Array(input)
    let secondStringArray = Array(secondString)

    var differencesCounter = 0

    for (index, char) in inputArray.enumerated() {
            if secondStringArray[index] != char {
                differencesCounter += 1
                if differencesCounter == 4 {
                    return false
            }
        }
    }
    return true
}

print(challenge10a("Clamp", secondString: "Cramp"))
//: [Next](@next)
