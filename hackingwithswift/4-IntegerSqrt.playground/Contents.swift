import UIKit

for i in 1...10_000{
    for j in 1...i{
        if j*j == i{
            print("\(i) is a perfect square of \(j)")
        }
    }
}
