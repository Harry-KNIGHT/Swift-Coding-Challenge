import UIKit


/*
Are the letters unique?

Write a function that accepts a String as its only parameter, and returns true if the string has only unique
letters, taking letter case into account.

 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.

 */


func challenge1a(input: String) -> Bool {
    var characters: [String] = []
    for char in input {
        if characters.contains(String(char)) {
            return false
        }
        characters.append(String(char))
    }
    return true
}

func challenge1b(input: String) -> Bool {
    Set(input).count == input.count
}

challenge1a(input: "No duplicates")

challenge1b(input: "No duplicates")
