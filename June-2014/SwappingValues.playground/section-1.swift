// Swapping in Swift

// Old way

func mySwap<T>(inout x: T, inout y: T) {
    var hold = x
    x = y
    y = hold
}

var one = 1
var two = 2

mySwap(&one, &two)

one
two

// Swap with tuples

(two, one) = (one, two)

one
two
