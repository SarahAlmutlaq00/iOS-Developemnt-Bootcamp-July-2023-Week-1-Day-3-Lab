import UIKit

//Task 1: Function Basics
func greetUser(name: String) -> String {
    let greeting = "Hello, " + name
    return greeting
}
print(greetUser(name: "sarah"))
print(greetUser(name: "norah"))

//Task 2: Function Overloading
func calculateArea (radius: Double)->Double{
    let areaOfCircle = Double.pi*pow(radius, 2)
    return areaOfCircle
}

calculateArea(radius: 8)

func calculateArea(length: Int, width: Int) -> Int {
 let area = length * width
 return area
}

calculateArea(length: 20, width: 30)

func mathOperation (num1:Int,num2:Int,operation:String)->Int{
    
    func add ()->Int{
        return num1+num2
    }
    func subtract ()->Int{
        return num1-num2
    }
    func multiply()->Int{
        return num1*num2
    }
    func divide ()-> Int{
        return num1/num2
    }
    
    switch operation{
    case "add":
        return add()
    case "subtract":
        return subtract()
    case "multiply":
        return multiply()
    case "divide":
        return divide()
    default:
       return 0
    }
}

mathOperation(num1: 6, num2: 3, operation: "add")
mathOperation(num1: 7, num2: 3, operation: "subtract")
mathOperation(num1: 2, num2: 4, operation: "multiply")
mathOperation(num1: 8, num2: 2, operation: "divide")

//Task 4: Higher-Order Functions

var arry :Array <Int> = [1,4,6,8,9,3]

let arrey = arry.map { i in
    i+1
}
print(arrey)

let EvenNum=arry.filter { i in
    i % 2 != 1
}
print(EvenNum)

let reduceNum = arry.reduce(0, { firstNumber, seconedNumber in
    return (firstNumber + seconedNumber)
    
})
print(reduceNum)

//Task 5: Closures

let multiply: (Int) -> Int = { number in
  return number * number
}
let arr = [1,3,5,6]

let Ar = arr.map(multiply)
Ar.forEach { element in
    print(element)
}
