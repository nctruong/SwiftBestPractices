//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let ngamdinh = 8
let satr = "H have \(ngamdinh) apples"
var arr = ["apple","banana"]

//Dictionary - occupations
var dic = [
   "a":1,
   "b":2
]

dic["a"]
var nilarrw = [String]()
var optional: String? = "a"
if let nonNil = optional {
    print("nonNil")
} else {
    print("nil")
}


class aClass {
    init(){
        
    }
    
    func printValue() -> String {
        return "nonNil"
    }
}

var objet: aClass?
if let value = objet?.printValue(){
    print(value)
} else {
    print("nil")
}

let array1 = ["a","b","c"]
for i in 0..<array1.count {
    // not encourage
}

for value in array1 {
    print(value)
}

let closure = { (int: Int) -> Int in
    return int
}

closure(1)
//
//// case of nil closure
//var closure: ((Int) -> Int)?
//
//closure?(1)
//
//// extend using ":" like Square: Parents
//
//enum Rank: Int {
//    
//}

// protocal is interface
// extension: adding more function for a class

func multiply(firstNum: Int, secondNum: Int = 3) -> Int {
    return firstNum * secondNum
}


func sum(firstNum: Int, secondNum: Int) -> Int {
    return (firstNum) + (secondNum)
}


func printSquareNumbers(limit: Int = 10) -> Void {
    for index in 1...limit {
        print("\(index)^2 = \(index*index)")
    }
}


enum CalculationsType{
    case Multiply
    case Sum
}

func calculate(firstNum: Int, secondNum: Int, operatorType: CalculationsType) -> Int {
    switch operatorType{
    case .Multiply:
        return multiply(firstNum: firstNum, secondNum: secondNum)
    case .Sum:
        return sum(firstNum: firstNum, secondNum: secondNum)
    }
}

// Function Type ------------------------------------------------------------------------------------------------------------------------------------
typealias CalculationFuncType = ((Int, Int) -> Int)
func calculateFunc(type: CalculationsType) -> CalculationFuncType {
    switch type {
    case .Multiply:
        return multiply
    case .Sum:
        return sum
    }
}

calculate(firstNum: 3, secondNum: 4, operatorType: .Multiply)

var calculateFunction = calculateFunc(type: .Multiply)
calculateFunction(3,4)

var calculateFunction2 = calculateFunc(type: .Sum)
calculateFunction2(5,6)

// Closure ------------------------------------------------------------------------------------------------------------------------------------
// Callback actually is to transfer a function as a params & call this params at the end of main function
typealias CalculationResultCallback = ((Int) -> Void)
func multiplyNumbers(firstNum: Int, secondNum: Int, callback: CalculationResultCallback){ // transfer a function as a params
    let result = firstNum * secondNum
    callback(result) // call function params at the end
}

// 5 different ways to transfer callback function
multiplyNumbers(firstNum: 3, secondNum: 4, callback: { (result)     -> Void in  print("Our result is: \(result)")})
multiplyNumbers(firstNum: 3, secondNum: 4, callback: { result       -> Void in  print("Our result is: \(result)")})
multiplyNumbers(firstNum: 3, secondNum: 4) { (result)               -> Void in  print("Our result is: \(result)")}
multiplyNumbers(firstNum: 3, secondNum: 4) { let newResult = $0*2   ;           print("Our result AFTER *2 is: \(newResult)")}
multiplyNumbers(firstNum: 3, secondNum: 4) { result in
    let newResult = result*2
    print("Our result AFTER *2 is: \(newResult)")
}









