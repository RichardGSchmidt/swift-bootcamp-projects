import UIKit

for i in 1...10_000{
    var result = IntSqrt(number: i)
    if result != 0{
        print("\(i) is a perfect square of \(result)")
    }
}

func IntSqrt(number: Int) -> Int {
    if number == 1{
        return 1
    }
    for j in 1...number/2{
        if j*j == number{
            return j
        }
    }
    return 0
}
