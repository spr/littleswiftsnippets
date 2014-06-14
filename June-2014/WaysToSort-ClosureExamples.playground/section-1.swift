// Playground - noun: a place where people can play

import UIKit
import Swift

// A helper function for this example
extension Array {
    mutating func shuffle() {
        for i in 0..self.count {
            let swapIndex = Int(rand()) % self.count
            let swapValue = self[swapIndex]
            self[swapIndex] = self[i]
            self[i] = swapValue
        }
    }
}

var numbers = [5, 6, 3, 2, 1, 4, 9, 0, 8, 7]

// Verbose form
numbers.sort({ (left, right) -> Bool in
    return left < right
})

numbers.shuffle()
numbers

// Return value is implied due to type inference
numbers.sort({ (left, right) in
    return left < right
})

numbers.shuffle()
numbers

// Single line closures can omit "return"
numbers.sort({ (left, right) in
    left < right
})

numbers.shuffle()
numbers

// Swift has default variables for closures as well
numbers.sort({ $0 < $1 })

numbers.shuffle()
numbers

// Trailing closures can exist outside the ()
numbers.sort() { $0 < $1 }

numbers.shuffle()
numbers

// Functions that only have one argument can drop the () entirely
numbers.sort { $0 < $1 }

numbers.shuffle()
numbers

// Swift can figure out how to use the infix function "<" in this context as well
numbers.sort(<)