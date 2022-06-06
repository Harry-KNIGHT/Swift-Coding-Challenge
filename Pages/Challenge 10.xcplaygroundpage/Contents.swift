//: [Previous](@previous)

import Foundation
/* Vowels and consonants

 Difficulty: Tricky

 Given a string in English, return a tuple containing the number of vowels and consonants.

 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.

 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.

 */



func challenge10a(_ input: String) -> (vowels: Int, consonants: Int) {
    var consonantCount: Int = 0
    var vowelCount: Int = 0

    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"

    for char in input.lowercased() {
        if vowels.contains(char) {
            vowelCount += 1
        } else if consonants.contains(char) {
            consonantCount += 1
        }
    }
    return (consonantCount, vowelCount)
}

print(challenge10a("Swift Coding Challenges"))
//: [Next](@next)
