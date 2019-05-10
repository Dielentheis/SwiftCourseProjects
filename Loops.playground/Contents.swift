import UIKit

func fibonacci(n : Int) {
    var firstNum = 0
    var secondNum = 1
    var temp = 0
    
    if n == 0 {
        print(firstNum)
        return
    } else if n == 1 {
        print(secondNum)
        return
    }
    
    for _ in 1...(n - 2) {
        temp = firstNum + secondNum
        firstNum = secondNum
        secondNum = temp
        
        print(temp)
    }
}

fibonacci(n: 10)
