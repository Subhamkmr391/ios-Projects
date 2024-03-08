import UIKit

func calculator ( num1: Int, num2: Int, operation: (Int, Int)->Int)->Int{
    
    return operation(num1, num2)
    
}

//way 1
//func add (n1: Int, n2: Int) ->Int{
//    
//    print(n1+n2)
//    return n1+n2
//}
//
//calculator(num1: 3, num2: 4, operation: add)


//way 2
//calculator(num1: 3, num2: 4, operation: { (n1: Int, n2: Int) ->Int in
//    
//    print(n1+n2)
//    return n1+n2
//})


//way 3
//calculator(num1: 3, num2: 4, operation: { (n1, n2) in  n1+n2 })


//way 4
calculator(num1: 3, num2: 4){$0+$1}


let array = [2,3,4,5,6,7,8]

func addOne(n1: Int)->Int{
    
    return n1 + 1
}

array.map(addOne(n1:))

array.map{$0 + 1}
