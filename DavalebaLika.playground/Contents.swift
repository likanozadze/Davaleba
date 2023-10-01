import UIKit

var greeting = "Hello, playground"
//N1
var age = 18
var age1 = 20
print(age+age1)

//N2

let age3 = 12
if age3 > 10 && age3 <= 20 { print("you can die.")
} else if age3 > 20 && age3 <= 50 { print("you should die")
} else if age3 > 50 && age3 <= 100 { print("you must die")
} else if age3 > 100 { print("you must definately die")
}

//N3
for number in 1...20 {
    print ("\(number) ", terminator: "")
}
//N4

var number = 1
var sum = 0

while number <= 100 {
    if number % 2 != 0 {
        sum += number
    }
    number += 1
}
print("The sum of all odd number in range of 1 - 100 is sum")

print()


//5

let name = "rtuli yopila"
for char in name.reversed() {
    print(char, terminator: "")
}


//N6

for number in 11...99 where number % 11 == 0 {
    print ("\(number) ", terminator: "")
}

let name1 = "123456789"
for char in name1.reversed() {
    print(char, terminator: "")
}


//N8 

var isNumberFound = false
var number1 = 0

while isNumberFound {
    if number1 % 5 == 0 && number1 % 9 == 0 {
        isNumberFound = true
        print ("First number1 divided by 5 and 9 is:\(number1)")
    }
    number1+=1
}


//მეორე დავალება
//1.შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა)
var numbers = [9,10,-10,200,40]
numbers.swapAt(0, 4)
print(numbers)

//2.შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).
var age = [2, 4, 6, 20, 25, 26, 40]
age.removeAll { $0 % 2 == 0 }
print(age)

//3.შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array
var number: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for i in 0...10 {
    number.append(i)
}
var evenNumber = [Int]()
var oddNumber = [Int]()

for number in number {
    if number % 2 == 0 {
        evenNumber.append(number)
    } else {
        oddNumber.append(number)
    }
}
print("evenNumber: \(evenNumber)")
print("oddNumber: \(oddNumber)")
//რატომ გააორმაგა ვერ მივხვდი;////

//4.შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
let numbers1: [Double] = [-1000.89, 2.22, 5.243, 80.1]
let largest = numbers1.max()
print(largest)

//5.შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.

var array1: [Int] = [8, 4, 9, 9, 0, 2]
var array2: [Int] = [1, 0, 9, 2, 3, 7, 0, 1]

array1.append(contentsOf: [1, 0, 9, 2, 3, 7, 0, 1])
print(array1)

var unsortedArray = [8, 4, 9, 9, 0, 2, 1, 0, 9, 2, 3, 7, 0, 1]
for i in stride(from: unsortedArray.count-1, to: 0, by: -1) {
    for j in 1...i {
        if unsortedArray[j-1] > unsortedArray[j] {
            let tmp = unsortedArray[j-1]
            unsortedArray[j-1] = unsortedArray[j]
            unsortedArray[j] = tmp
        }
    }
}
print(unsortedArray)

//6 შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
var names = Set<String>()
names.insert("Saba")
names.insert("Lika")
names.insert("Nika")
names.insert("Nika")
print(names)

//7 შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.

let numbers3: Set = [10,1000,102,44,45]
let numbers4: Set = [5,23,43,12,44,214]
let numbers3AndNumbers4 = numbers3.union(numbers4)
print(numbers3AndNumbers4)

let bothNumbers3AndNumbers4 = numbers4.intersection(numbers3)
print(bothNumbers3AndNumbers4)
print("Subtraction: ", numbers3.subtracting(numbers4))

//8 შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
let Fruit: Set = ["banana", "pear", "lemon", "strawberry", "watermellon"]
let yellowFruit: Set = ["banana", "pear", "lemon"]
print(yellowFruit.isSubset(of: Fruit))

//9 შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
var newArray: [Int] = [8, 4, 9, 0, 2]
print("array-ში ყველა ელემენტი განსხვავებულია")

//10 შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
var movieDictionary = [String: Double]()
movieDictionary["Barbie"] = 7.1
movieDictionary["Elemental"] = 7.0
movieDictionary["Talk to Me"] = 7.2
movieDictionary["Love at First Sight"] = 6.9
movieDictionary["Jawan"] = 7.6

print(movieDictionary.values)
let values = [7.6, 7.1, 6.9, 7.2, 7.0]
let average = values.reduce(0.0, +) / Double(numbers.count)
print(average)


//მესამე დავალება
//1.შექმენით function რომლის მეშვეობითაც გამოითვლით ფაქტორიალს. function იღებს ერთ Int ტიპის ცვლადს და აბრუნებს ფაქტორიალს, ანუ მაგალითად თუ გადავაწვდით 5-იანს function-მა უნდა დაგვიბრუნოს 120 რომელიც მიიღო შემდეგი გამოთვლის შედეგად 5*4*3*2*1. არ გამოიყენოთ მზა ფუნქციები.
var finalNumber: Int = 1
func factorial(_ numb: Int) -> Int{
    if numb != 0{
        for i in 1...numb {
            finalNumber = finalNumber * i
        }
    }else{
        return finalNumber
    }
    return finalNumber
}
print(factorial(5))
print()

//2.შექმენით function რომელიც აგენერირებს ფიბონაჩის პირველ 20 რიცხვს. არ გამოიყენოთ მზა ფუნქციები.
func calculateFibonacciNumbers(_ count: Int) -> [Int] {
    var fibonacciNumbers = [0,1]
    while fibonacciNumbers.count < count {
        let followingNumber = fibonacciNumbers[fibonacciNumbers.count - 1] + fibonacciNumbers[fibonacciNumbers.count - 2]
        fibonacciNumbers.append(followingNumber)
    }
    return fibonacciNumbers
}
let firt20fibonacciNumbers = calculateFibonacciNumbers(20)
print(firt20fibonacciNumbers)


//3.შექმენით function რომელიც მიიღებს String-ს, function-მა უნდა შეამოწმოს პალინდრომია (წინიდანაც და უკნიდანაც იკითხება ერთნაირად) თუ არა ეს String-ი. მაგალითად "racecar" ამ შემთხვევაში ფუნქციამ უნდა დააბრუნოს true. არ გამოიყენოთ მზა ფუნქციები. შეგიძლიათ მეორე solution-ი მზა ფუნქციის გამოყენებით გვაჩვენოთ.


func isPalindrome(_ input: String) -> Bool {

    let inputLowerCased = input.lowercased()
    let characters = Array(inputLowerCased)
    let length = characters.count
    for i in 0..<length/2 {
        if characters[i] != characters[length - 1 - i] {

            return false
        }
    }
    return true
}
let input1 = "martivi yopila developeroba"

print(isPalindrome(input1))


//4. შექმენით function რომელიც გადაცემულ რიცხვების array-ს ააკვარდატებს, დაპრინტავს და დააბრუნებს მნიშვნელობას.
let numbers = [1, 2, 3, 4]
func arraySquared(_ numbers: [Int]) -> [Int] {
    var squaredArray: [Int] = []
    
    for number in numbers {
        let squaredValue = number * number
        squaredArray.append(squaredValue)
        print("The square of \(number) is \(squaredValue)")
    }
    
    return squaredArray
}
let squaredValues = arraySquared(numbers)

            
//5.შექმენით function რომელიც დაითვლის სიტყვების რაოდენობას String-ში, ფუნქციამ უნდა მიიღოს String-ი, და დააბრუნოს dictionary, სიტყვებით და იმ რაოდენობით რამდენჯერ იყო ერთი და იგივე სიტყვა გამოყენებული String-ში. uppercase და lowercase ასოები უნდა იყოს დაჰენდლილი ერთნაირად, მაგალითად თუ function-s გადავაწვდით "TBC x USAID, tbc it academy, we are in TBC academy." function-მა უნდა დააბრუნოს ["tbc": 3, "academy": 2, "we": 1, "are": 1, "in": 1, "it": 1, "x": 1]
    
//6. შექმენით Closure რომელსაც გადაეცემა რიცხვი და დააბრუნებს ამ რიცხვის ორობით ჩანაწერს.
let binary: (Int) -> String = { number in
    let binaryString = String(number, radix: 2)
    return binaryString
}
let number = 100
let binaryRepresentation = binary(number)
print("Binary representation of \(number): \(binaryRepresentation)")
    
//7. შექმენით Closure რომელიც გაფილტრავს(ანუ წაშლის) კენტ რიცხვებს Int-ების Array-დან.
let arrayOfNumbers = [2, 3, 13, 22, 25]
let filterOddNumbers: ([Int]) -> [Int] = { numbers in
    let filteredNumbers = numbers.filter { $0 % 2 == 0 }
    return filteredNumbers
}
let evenNumbers = filterOddNumbers(numbers)
print("Even numbers: \(evenNumbers)")

//8. შექმენით Closure რომელიც დამაპავს(ანუ გააკეთებს ქმედებას ყველა მასივის ელემენტზე) Int-ების Array-ის და თითოეულ ელემენტს გაათმაგებს.
let numbersForMap = [13, 2, 14, 2]
let multiplyBy10: ([Int]) -> [Int] = { numbers in
    let multipliedNumbers = numbersForMap.map { $0 * 10 }
    return multipliedNumbers
}
let multipliedValues = multiplyBy10(numbersForMap)
print("Multiplied values: \(multipliedValues)")

//9. გამოიყენეთ escaping closure სადაც 3 წამის შემდეგ დაბეჭდავს ჩაწოდებული მასივის ჯამს.
import Foundation
var number1 = [1, 2, 3, 4]
func afterDelay(numbers: [Int], closure: @escaping (Int) -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        let sum = numbers.reduce(0, +)
        closure(sum)
    }
}
afterDelay(numbers: number1) { sum in
    print("Sum after 3 seconds: \(sum)")
}

    //10. function-ს გადავცეთ String-ების array და დაგვიბრუნოს მხოლოდ კენტი რიცხვების მასივი. გამოიყენეთ high order functions.
let inputArray = ["red", "?", "10", "5", "7"]
let oddNumbers = inputArray.compactMap { Int($0) }
                           .filter { $0 % 2 != 0 }
print("Odd numbers: \(oddNumbers)")
