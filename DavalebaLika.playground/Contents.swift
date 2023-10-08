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


//მეოთხე დავალება
import Foundation
////1. შექმენით enum-ი სახელით DayOfWeek შესაბამისი ქეისებით. დაწერეთ function რომელიც იღებს ამ ენამის ტიპს. function-მა უნდა და-print-ოს, გადაწოდებული დღე კვირის დღეა თუ დასვენების.
enum DayOfWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

func getTheStatus(day: DayOfWeek) -> String? {
    switch day {
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        return "Weekday"
    case  .saturday, .sunday:
        return "WeekEnd"
    }
}
getTheStatus(day: .monday)


//2. შექმენით enum-ი Weather შემდეგი ქეისებით, Sunny, Cloudy, Rainy და Snowy. ამ ქეისებს უნდა ჰქონდეს associated value Celsius-ის სახით. დაწერეთ function რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.

enum Weather {
    case sunny(temperature: Int)
    case cloudy(temperature: Int)
    case rainy(temperature: Int)
    case snowy(temperature: Int)
}

let sunny = Weather.sunny(temperature: 28)
let cloudy = Weather.cloudy(temperature: 12)
let rainy = Weather.rainy(temperature: 16)
let snowy = Weather.snowy(temperature: -10)

func recommendation(for weather: Weather) -> String {
    switch weather {
    case .sunny(let temperature):
        if temperature >= 32 {
            return "Wear linen clothes, apply sunscreen and drink water"
        } else if temperature >= 20 {
            return "Wear something comfortable"
        } else {
            return "Wear appropriate clothing for a sunny day"
        }
    case .cloudy(let temperature):
        if temperature <= 10 {
            return "It's cloudy weather today. Don't forget your hat"
        } else {
            return "It's cloudy but not too cold. Dress comfortably."
        }
    case .rainy(let temperature):
        if temperature >= 15 {
            return "Don't forget your umbrellas"
        } else {
            return "Don't forget waterproof shoes"
        }
    case .snowy(let temperature):
        if temperature <= -10 {
            return "Baby, it's cold outside, stay inside"
        } else {
            return "Must stay at home"
        }
    }
}

print(recommendation(for: sunny))
print(recommendation(for: cloudy))
print(recommendation(for: rainy))
print(recommendation(for: snowy))

//3. შექმენით struct-ი Book, with properties როგორიცაა: title, author, publicationYear. ამის შემდეგ შექმენით array-ი Book-ის ტიპის, შექმენით რამოდენიმე Book-ის ობიექტი, და შეავსეთ array ამ წიგნებით. დაწერეთ function რომელიც მიიღებს ამ წიგნების array-ს და მიიღებს წელს. function-მა უნდა დაგვიბრუნოს ყველა წიგნი რომელიც გამოშვებულია ამ წლის შემდეგ. დავ-print-ოთ ეს წიგნები.

struct Book {
    var title: String
    var author: String
    var publicationYear: Int
}

var books: [Book] = [
    Book(title: "A Tale of Two Cities", author: "Charles Dickens", publicationYear: 1859),
    Book(title: "The Little Prince", author: "Antoine de Saint-Exupéry", publicationYear: 1943),
    Book(title: "Harry Potter and the Philosopher's Stone", author: "J. K. Rowling", publicationYear: 1997)
]

func bookArray(books: [Book], year: Int) -> [Book] {
    return books.filter { $0.publicationYear > year }
}
let filteringYear = 1900
let filteredBooks = bookArray(books: books, year: filteringYear)

for book in filteredBooks {
    print("Title: \(book.title), Author: \(book.author), publicationYear: \(book.publicationYear)")
}

//4. შექმენით struct BankAccount, with properties როგორიცაა: holderName, accountNumber, balance. ამ ობიექტში დაამატეთ methods, დეპოზიტისა და გატანის (withdraw), დაწერეთ შესაბამისი ლოგიკა და ეცადეთ გაითვალისწინოთ სხვადასხვა ეჯ-ქეისები (edge case). მაგ. თანხის გატანისას თუ თანხა იმაზე ნაკლებია ვიდრე გვაქვს, თანხას ვერ გავიტანთ და ასე შემდეგ. print-ის მეშვეობით გამოვიტანოთ შესაბამისი შეცდომები . ამის შემდეგ შექმენით BankAccount ობიექტი და გააკეთეთ ტრანზაქციების იმიტაცია თქვენს მიერ დაწერილი მეთოდებით.

struct BankAccount {
    var holderName = "Lika Nozadze"
    var accountNumber = "GE776757575"
    var balance = 102.99
    
    mutating func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposited $\(amount). New balance: $\(balance)")
        } else {
            print("please try again with positive number")
        }
    }
    
    mutating func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
            print("Withdrawn $\(amount). New balance: $\(balance)")
        } else {
            print("You are broke, you don't  have that kind of money")
        }
    }
}

var account = BankAccount()
account.deposit(amount: 55.0)
account.withdraw(amount: 200.0)


//5. შექმენით enum-ი Genre მუსიკის ჟანრის ქეისებით. ამის შემდეგ შექმენით struct Song, with properties: title, artist, duration, genre, description (computied propertie უნდა იყოს description) და publisher (lazy propertie-ად შექმენით publisher). შემდეგ შექმენით თქვენი playlist array რომელსაც Song-ებით შეავსებთ (ზოგ song-ს ჰქონდეს publisher, ზოგს არა). შექმენით function რომელსაც გადააწვდით თქვენს playlist-ს და ჟანრს, function-ს დააბრუნებინეთ მხოლოდ იმ Song-ების array, რომელიც ამ ჟანრის იქნება და შემდეგ დაა-print-ინეთ ეს Song-ები.
//
//enum GenresOfMusic {
//    case pop
//    case soul
//    case rock
//    case country
//}
//
//struct Song {
//    var title: String
//    var artist: String
//    var duration: Double
//    var genre: String
//    lazy var publisher: String? = nil
//    var description: String {
//        return "title: \(title), artist: \(artist), duration: \(duration), genre: \(genre), publisher: \(publisher)"
//    }
//
//    var playlist: [Song] = [
//    Song(title: "Billie Jean", artist: "Michael Jackson", duration: 4.55, genre: "Pop"),
//    Song(title: <#T##String#>, artist: <#T##String#>, duration: <#T##Double#>, genre: <#T##String#>)]

მეხუთე დავალება

import Foundation
//1-ი თასქი ბიბლიოთეკის სიმულაცია. (თავისი ქვეთასქებით).
//1. შევქმნათ Class Book.Properties: bookID(უნიკალური იდენტიფიკატორი Int), String title, String author, Bool isBorrowed. Designated Init.Method რომელიც ნიშნავს წიგნს როგორც borrowed-ს. Method რომელიც ნიშნავს წიგნს როგორც დაბრუნებულს.
class Book {
    let bookID: Int
    let title: String
    let author: String
    var isBorrowed: Bool
    
    init(bookID: Int, title: String, author: String, isBorrowed: Bool = false) {
        self.bookID = bookID
        self.title = title
        self.author = author
        self.isBorrowed = isBorrowed
    }
    func borrowed() {
        isBorrowed = true
        print("\(title) by \(author) is borrowed.")
    }
    func returned() {
        isBorrowed = false
        print("\(title) by \(author) is returned.")
    }
}
var myBook = Book(bookID: 1, title: "მე, ბებია, ილიკო და ილარიონი", author: "ნოდარ დუმბაძე", isBorrowed: true)
myBook.borrowed()
myBook.returned()

//2. შევქმნათ Class Owner Properties: ownerId(უნიკალური იდენტიფიკატორი Int), String name, Books Array სახელით borrowedBooks.Designated Init. Method რომელიც აძლევს უფლებას რომ აიღოს წიგნი ბიბლიოთეკიდან. Method რომელიც აძლევს უფლებას რომ დააბრუნოს წაღებული წიგნი.
//class Owner {
//    let ownerId: Int
//    let name: String
//    var borrowedBooks: [Book]
//
//    init(ownerId: Int, name: String, borrowedBooks: [Book] = []) {
//        self.ownerId = ownerId
//        self.name = name
//        self.borrowedBooks = borrowedBooks
//    }
//    func borrowBook(book: Book) {
//        book.borrowed()
//        borrowedBooks.append(book)
//        print("\(name) borrowed '\(book.title)' from the library.")
//    }
//    func returnBook(book: Book) {
//        book.returned()
//        print("\(name) returned '\(book.title)' to the library.")
//    }
//}
//var newOwner = Owner(ownerId: 1, name: "Lika")
//var book1 = Book(bookID: 1, title: "მე, ბებია, ილიკო და ილარიონი", author: "ნოდარ დუმბაძე", isBorrowed: true)
//print(newOwner .borrowBook(book: book1))
//print(newOwner .returnBook(book: book1))

//3. შევქმნათ Class Library Properties: Books Array, Owners Array. Designated Init. Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით. Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს. Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს. Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს. Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს. Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ. Method რომელიც აძლევს უფლებას Owner-ს წააღებინოს წიგნი თუ ის თავისუფალია.

class Library {
    var books: [String]
    var owners: [String]
    var booksID: Int
    var ownerID: Int
    var isBookBorrowed: Bool
    
    init(books: [String], owners: [String], booksID: Int, ownerID: Int, isBookBorrowed: Bool) {
        self.books = books
        self.owners = owners
        self.booksID = booksID
        self.ownerID = ownerID
        self.isBookBorrowed = isBookBorrowed // Use the provided parameter value
    }
    //Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით.
    func addBook(book: String) {
        self.books.append(book)
    }
    
    //Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს.
    func addOwner(owner: String) {
        self.owners.append(owner)
        
    }
//Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს.

    func findAvailableBooks() -> [String] {
        return self.books.filter {_ in !self.isBookBorrowed }
            }
    
//Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს.
    func findTakenBooks() -> [String] {
        return self.books.filter { _ in self.isBookBorrowed }
       }
//Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს
    
    func findOwnerID(ownerIDToFind: Int) -> String? {
        for (index, id) in self.owners.enumerated() {
            if Int(id) == ownerIDToFind {
                return self.owners[index]
            }
        }
        return nil
    }
//Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ.
    func findBooksByOwner(ownerToFind: String) -> [String] {
        var booksByOwner: [String] = []
        for (index, owner) in self.owners.enumerated() {
            if owner == ownerToFind && self.isBookBorrowed {
                booksByOwner.append(self.books[index])
            }
        }
        return booksByOwner
    }
    
    }

var myLibrary = Library(books: [], owners: [], booksID: 01, ownerID: 11, isBookBorrowed: true)

var myLibrary1 = Library(books: ["დედა ენა"], owners: ["ეკა"], booksID: 01, ownerID: 11, isBookBorrowed: true)
var myLibrary2 = Library(books: ["ჯინსების თაობა"], owners: ["მამუკა"], booksID: 02, ownerID: 12, isBookBorrowed: false)
var myLibrary3 = Library(books: ["ვეფხისტყაოსანი"], owners: ["შმაგი"], booksID: 03, ownerID: 13, isBookBorrowed: false)


//აქ დავპრინტე წიგნები და მფლობელები
print("Books in the libraries: \(myLibrary1.books + myLibrary2.books + myLibrary3.books)")
print("Owners of the library: \(myLibrary1.owners + myLibrary2.owners + myLibrary3.owners)")

//ყველა ხელმისაწვდომი წიგნი დაიპრინტება აააქ
    let availableBooksFromLibraries = myLibrary1.findAvailableBooks() + myLibrary2.findAvailableBooks() + myLibrary3.findAvailableBooks()

    if availableBooksFromLibraries.isEmpty {
        print("No book is available.")
    } else {
        print("Available books: \(availableBooksFromLibraries)")
    }
//წაღებული წიგნები დაიპრინტება აააააქ

let takenBooksFromLibraries = myLibrary1.findTakenBooks() + myLibrary2.findTakenBooks() + myLibrary3.findTakenBooks()

if takenBooksFromLibraries.isEmpty {
    print("No book is taken.")
} else {
    print("Taken books: \(takenBooksFromLibraries)")
}

//აქ დაიბედებაა Owner-ს თავისი აიდით თუ ეგეთი არსებობს საერთოოდ
let ownerIDToFind = 15
if let foundOwner = myLibrary2.findOwnerID(ownerIDToFind: ownerIDToFind) {
    print("Owner found: \(foundOwner)")
} else {
    print("Owner not found.")
}
// წაღებული წიგნი კონკრეტული Owner-ის მიერ.
let ownerToFind = "ეკა" // Replace with the desired owner's name
let booksByOwner = myLibrary1.findBooksByOwner(ownerToFind: ownerToFind) + myLibrary2.findBooksByOwner(ownerToFind: ownerToFind) + myLibrary3.findBooksByOwner(ownerToFind: ownerToFind)

if booksByOwner.isEmpty {
    print("No books found for owner \(ownerToFind).")
} else {
    print("Books borrowed by \(ownerToFind): \(booksByOwner)")
}

//4. გავაკეთოთ ბიბლიოთეკის სიმულაცია. შევქმნათ რამოდენიმე წიგნი და რამოდენიმე Owner-ი, შევქმნათ ბიბლიოთეკა.

//class Book {
//
//    let title: String
//    let bookID: Int
//    let author: String
//    var isBorrowed: Bool
//
//    init(title: String, bookID: Int, author: String, isBorrowed:Bool) {
//        self.title = title
//        self.bookID = bookID
//        self.author = author
//        self.isBorrowed = false
//    }
//}
//    class Owner {
//        let name: String
//
//        init(name: String) {
//            self.name = name
//    }
//}
//class library {
//    var books: [Book]
//    var owners: [Owner]
//
//    init() {
//        self.books = []
//        self.owners = []
//    }
//
//    func addBook(_ book: Book) {
//        book.append(book)
//    }
//
//    func addOwner(_ owner: Owner) {
//        owner.append(owner)
//    }
//}
//
//let book1 = Book(bookID: 01, title: "პადინგტონი", author: "მაიკლ ბონდი", isBorrowed: true)
//let book2 = Book(bookID: 02, title: "პეპი", author: "ᲐᲡᲢᲠᲘᲓ ᲚᲘᲜᲓᲒᲠᲔᲜᲘ", isBorrowed: false)
//let book3 = Book(bookID: 03, title: "ნარცისი და გოლდმუნდი", author: "ჰერმან ჰესე", isBorrowed: true)
//
//    let owner1 = Owner(name: "ნანა")
//    let owner2 = Owner(name: "ვასო")
//    let owner3 = Owner(name: "სანდრო")
//
//let library = library()
//
//library.addBook(book1)
//library.addBook(book2)
//library.addBook(book3)
//
//
//library.addOwner(owner1)
//library.addOwner(owner2)
//library.addOwner(owner3)
//
//print("Books in the library:")
//for book in library.books {
//    print("Title: \(book.title), Author: \(book.author), Borrowed: \(book.isBorrowed)")
//}
//
//// Print owners
//print("\nOwners in the library:")
//for owner in Library.owners {
//    print("Name: \(owner.name)")
//}
