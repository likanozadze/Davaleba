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
