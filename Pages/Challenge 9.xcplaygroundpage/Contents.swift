//: [Previous](@previous)

import Foundation

/*  Challenge 9: Find pangrams

    Difficulty: Tricky

     Write a function that returns true if it is given a string that is an English pangram, ignoring
         letter case.

     Tip: A pangram is a string that contains every letter of the alphabet at least once.

     Sample input and output
     • The string “The quick brown fox jumps over the lazy dog” should return true.
     • The string “The quick brown fox jumped over the lazy dog” should return false, because
     it’s missing the S.
 */


// My solution
func challenge9a(_ input: String) -> Bool {
    let inputLowercased = input.lowercased().sorted()
    var stringArray = [String]()

    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"," M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W"," X", "Y"," Z"]

    let lowercasedArray = alphabet.map { $0.lowercased() }
    for char in inputLowercased {
        if char.isLetter && !stringArray.contains(String(char)){
            stringArray.append(String(char))
        }
    }


    return stringArray.count == 26 && lowercasedArray.count == 26
}

print(challenge9a("The quick brown fox jumps over the lazy dog"))

// Found with help
func challenge9b(_ input: String) -> Bool {
    let set = Set(input.lowercased())
    let filter = set.filter { $0 >= "a" && $0 <= "z"}
    return filter.count == 26
}
print(challenge9b("The quick brown fox jumped over the lazy dog"))
//: [Next](@next)
