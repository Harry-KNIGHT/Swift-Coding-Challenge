//: [Previous](@previous)

import Foundation

/* Fizz Buzz

 Difficulty: Easy

 Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz”
 if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for
 all other cases.

 Sample input and output
 • 1 should print “1”
 • 2 should print “2”
 • 3 should print “Fizz”
 • 4 should print “4”
 • 5 should print “Buzz”
 • 15 should print “Fizz Buzz”
 */

func challenge16a() {
    for number in (1...100) {
        if number % 3 == 0 && number % 5 == 0 {
            print("\(number) Fizz Buzz")
        }else if number % 3 == 0 {
            print("\(number) Fizz")
        }else if number % 5 == 0 {
            print("\(number) Buzz")
        }else {
            print("\(number)")
        }
    }
}

func challenge16b() {
    for number in 1...100 {
        switch (number % 3 == 0, number % 5 == 0) {
        case (true, false):
            print("\(number) Fizz")
        case (false, true):
            print("\(number) Buzz")
        case (true, true):
            print("\(number) FizzBuzz")
        default:
            print(number)
        }
    }
}

challenge16a()
challenge16b()

//: [Next](@next)
