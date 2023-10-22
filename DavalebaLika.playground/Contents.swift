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
/////////////////
//მეხუთე დავალება (ახალი ვერსია)
import Foundation
//1-ი თასქი ბიბლიოთეკის სიმულაცია. (თავისი ქვეთასქებით).
//1. შევქმნათ Class Book.Properties: bookID(უნიკალური იდენტიფიკატორი Int), String title, String author, Bool isBorrowed. Designated Init.Method რომელიც ნიშნავს წიგნს როგორც borrowed-ს. Method რომელიც ნიშნავს წიგნს როგორც დაბრუნებულს.
//class Book {
//    let bookID: Int
//    let title: String
//    let author: String
//    var isBorrowed: Bool
//
//    init(bookID: Int, title: String, author: String, isBorrowed: Bool = false) {
//        self.bookID = bookID
//        self.title = title
//        self.author = author
//        self.isBorrowed = isBorrowed
//    }
//    func borrowed() {
//        isBorrowed = true
//        print("\(title) by \(author) is borrowed.")
//    }
//    func returned() {
//        isBorrowed = false
//        print("\(title) by \(author) is returned.")
//    }
//}
//var myBook = Book(bookID: 1, title: "მე, ბებია, ილიკო და ილარიონი", author: "ნოდარ დუმბაძე", isBorrowed: true)
//myBook.borrowed()
//myBook.returned()
//
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
//


//3. შევქმნათ Class Library Properties: Books Array, Owners Array. Designated Init. Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით. Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს. Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს. Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს. Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს. Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ. Method რომელიც აძლევს უფლებას Owner-ს წააღებინოს წიგნი თუ ის თავისუფალია.
class Book {
    var title: String
    let bookID: Int
    let author: String
    var isBorrowed: Bool
    
    init(title: String, bookID: Int, author: String, isBorrowed: Bool) {
        self.title = title
        self.bookID = bookID
        self.author = author
        self.isBorrowed = isBorrowed
    }
}
class Owner {
    var name: String
    let patronID: Int
    var ownedBooks: [Book]
    init(name: String,patronID: Int, ownedBooks: [Book]) {
        self.name = name
        self.patronID = patronID
        self.ownedBooks = ownedBooks
    }
}
    
class Library {
    var books: [Book]
    var owners: [Owner]
    
    init(books: [Book], owners: [Owner]) {
        self.books = books
        self.owners = owners
        
    }
    //Method წიგნის დამატება, რათა ჩვენი ბიბლიოთეკა შევავსოთ წიგნებით.
    func addBook(_ book: Book) {
        books.append(book)
    }
    func printLibrary() {
        for book in books {
            print("Title: \(book.title)")
            print("Book ID: \(book.bookID)")
            print("Author: \(book.author)")
            print("Borrowed: \(book.isBorrowed ? "კი" : "არა")")
            
        }
    }
    //Method რომელიც ბიბლიოთეკაში ამატებს Owner-ს.
    func addOwner(name: String, patronID: Int) {
        let newOwner = Owner(name: name, patronID: patronID, ownedBooks: [])
        owners.append(newOwner)
    }
    func printOwners() {
        for owner in owners {
            print("Owner Name: \(owner.name)")
            print("Patron ID: \(owner.patronID)")
        }
    }
//Method რომელიც პოულობს და აბრუნებს ყველა ხელმისაწვდომ წიგნს.
    func findAvailableBooks() -> [Book] {
        var availableBooks: [Book] = []
        
        for book in books {
            if !book.isBorrowed {
                availableBooks.append(book)
            }
        }
        
        return availableBooks
    }
    func printAvailableBooks() {
        let availableBooks = findAvailableBooks()
        
        if availableBooks.isEmpty {
            print("No available books.")
        } else {
            print("Available Books:")
            for book in availableBooks {
                print("Title: \(book.title)")
                print("Book ID: \(book.bookID)")
                print("Author: \(book.author)")
                print("Borrowed: No")
                print()
            }
        }
    }
//Method რომელიც პოულობს და აბრუნებს ყველა წაღებულ წიგნს
    func makeBooksAvailable() {
        for index in books.indices {
            if books[index].isBorrowed {
                books[index].isBorrowed = false
            }
        }
    }
//Method რომელიც ეძებს Owner-ს თავისი აიდით თუ ეგეთი არსებობს.
    func findOwner(byPatronID patronID: Int) -> Owner? {
        for owner in owners {
            if owner.patronID == patronID {
                return owner
            }
        }
        return nil
    }
//Method რომელიც ეძებს წაღებულ წიგნებს კონკრეტული Owner-ის მიერ.
    func findBooksOwned(byOwner owner: Owner) -> [Book] {
        var ownedBooks: [Book] = []

        for book in owner.ownedBooks {
            if let index = books.firstIndex(where: { $0.bookID == book.bookID }) {
                ownedBooks.append(books[index])
            }
        }

        return ownedBooks
    }
}

    let library = Library(books: [], owners: [])
    let newBook = Book(title: "დედა ენა", bookID: 1, author: "იაკობ გოგებაშვილი", isBorrowed: false)
    let newBook1 = Book(title: "ჯინსების თაობა", bookID: 2, author: "დათო ტურაშვილი", isBorrowed: false)
    let newBook2 = Book(title: "ვეფხისტყაოსანი", bookID: 3, author: "შოთა რუსთაველი", isBorrowed: true)

    library.addBook(newBook)
    library.addBook(newBook1)
    library.addBook(newBook2)

library.addOwner(name: "მამუკა", patronID: 4)
library.addOwner(name: "ეკა", patronID: 5)
library.addOwner(name: "ლიკა", patronID: 6)

library.printLibrary()
library.printOwners()
library.printAvailableBooks()
library.makeBooksAvailable()
library.printLibrary()

if let owner = library.findOwner(byPatronID: 4) {
    print("Owner Name: \(owner.name)")
    print("Patron ID: \(owner.patronID)")
} else {
    print("Owner not found.")
}
if let owner = library.findOwner(byPatronID: 4) {
    let ownerBooks = library.findBooksOwned(byOwner: owner)

    if ownerBooks.isEmpty {
        print("\(owner.name) არ აქვს წიგნები.")
    } else {
        print("\(owner.name)'წაღებული აქვს წიგნები:")
        for book in ownerBooks {
            print("Title: \(book.title)")
            print("Book ID: \(book.bookID)")
            print("Author: \(book.author)")
            print("Borrowed: \(book.isBorrowed ? "კი" : "არა")")
            print()
        }
    }
} else {
    print("Owner not found.")
}


//გავაკეთოთ ბიბლიოთეკის სიმულაცია. შევქმნათ რამოდენიმე წიგნი და რამოდენიმე Owner-ი, შევქმნათ ბიბლიოთეკა. დავამატოთ წიგნები და Owner-ები ბიბლიოთეკაში წავაღებინოთ Owner-ებს წიგნები და დავაბრუნებინოთ რაღაც ნაწილი. დავბეჭდოთ ინფორმაცია ბიბლიოთეკიდან წაღებულ წიგნებზე, ხელმისაწვდომ წიგნებზე და გამოვიტანოთ წაღებული წიგნები კონკრეტულად ერთი Owner-ის მიერ

class Book {

let title: String
let author: String
var isBorrowed: Bool
var owner: String

init(title: String, author: String, isBorrowed:Bool, owner: String) {
    self.title = title
    self.author = author
    self.isBorrowed = isBorrowed
    self.owner = owner
}
}

class Owner {
    let name: String

    init(name: String) {
        self.name = name
}
}


let book1 = Book(title: "პადინგტონი", author: "მაიკლ ბონდი", isBorrowed: true, owner: "ნანა")
let book2 = Book(title: "პეპი", author: "ᲐᲡᲢᲠᲘᲓ ᲚᲘᲜᲓᲒᲠᲔᲜᲘ", isBorrowed: true, owner: "ნანა")
let book3 = Book(title: "ნარცისი და გოლდმუნდი", author: "ჰერმან ჰესე", isBorrowed: false, owner: "სანდრო")
let book4 = Book(title: "ლალალა", author: "ჰიჰიჰი", isBorrowed: true, owner: "ვასო")

let owner1 = Owner(name: "ნანა")
let owner2 = Owner(name: "ვასო")
let owner3 = Owner(name: "სანდრო")
let owner4 = Owner(name: "კიკიკი")

class Library {
var books: [Book] = []
var owners: [Owner] = []

func addBook(_ book: Book) {
    books.append(book)
}

func addOwner(_ owner: Owner) {
    owners.append(owner)
}
}

let library = Library()

library.addBook(book1)
library.addBook(book2)
library.addBook(book3)
library.addBook(book4)

library.addOwner(owner1)
library.addOwner(owner2)
library.addOwner(owner3)
library.addOwner(owner4)

let allBooks = library.books
let allOwners = library.owners

print("ყველა წიგნი ბიბლიოთეკაში:")
for book in allBooks {
print("Title: \(book.title)")
print("Author: \(book.author)")
print()
}
print("All Owners ბიბლიოთეკაში:")
for owner in allOwners {
print("Owner Name: \(owner.name)")
}

print("ბიბლიოთეკიდან გატანილი წიგნები:")
for book in library.books {
if book.isBorrowed {
    print("Title: \(book.title)")
    print("Author: \(book.author)")
    print()
}
}
print("ბიბლიოთეკაში ხელმისაწვდომია:")
for book in library.books {
if !book.isBorrowed {
    print("Title: \(book.title)")
    print("Author: \(book.author)")
    print()
}
}
let ownerThatBorrowedMaxBooks = "ნანა"

print("Books taken by \(ownerThatBorrowedMaxBooks):")
for book in library.books {
if book.owner == ownerThatBorrowedMaxBooks {
    print("Title: \(book.title)")
    print("Author: \(book.author)")
    print()
}
}

//===========================================================
//2 თასქი ავაწყოთ პატარა E-commerce სისტემა. (თავისი ქვეთასქებით).
//1. შევქმნათ Class Product, შევქმნათ შემდეგი properties productID (უნიკალური იდენტიფიკატორი Int), String name, Double price. შევქმნათ Designated Init.
class Product {
    var productID: Int
    var name: String
    var price: Double
    
    init(productID: Int, name: String, price: Double) {
        self.productID = productID
        self.name = name
        self.price = price
    }
}
//2. შევქმნათ Class Cart Properties: cartID(უნიკალური იდენტიფიკატორი Int), Product-ების Array სახელად items. შევქმნათ Designated Init.
class Cart {
    var cartID: Int
    var productItems: [Product]
    
    init(cartID: Int, productItems: [Product] = []) {
        self.cartID = cartID
        self.productItems = productItems
    }
    func addProduct(product: Product) {
        productItems.append(product)
    }
    func removeProduct(productID: Int) {
         productItems.removeAll { $0.productID == productID }
     }
    func totalPrice() -> Double {
          var total: Double = 0.0
          for product in productItems {
              total += product.price
          }
          return total
      }
}

let product1 = Product(productID: 1, name: "marwyvi", price: 1.99)
let product2 = Product(productID: 2, name: "kokakola", price: 1.85)
let product3 = Product(productID: 3, name: "vashli", price: 3.74)
let product4 = Product(productID: 4, name: "sazamtro", price: 11.23)


var myCart = Cart(cartID: 11)

myCart.addProduct(product: product1)
myCart.addProduct(product: product2)
myCart.addProduct(product: product3)
myCart.addProduct(product: product4)


for product in myCart.productItems {
    print("Product ID: \(product.productID)")
    print("Name: \(product.name)")
    print("Price: \(product.price)")
}

myCart.removeProduct(productID: 1)

print("წაშალე და განაახლე:")

for product in myCart.productItems {
    print("Product ID: \(product.productID)")
    print("Name: \(product.name)")
    print("Price: \(product.price)")
}

let totalPrice = myCart.totalPrice()
print("Total Price: \(totalPrice)")

//3. შევქმნათ Class User Properties: userID(უნიკალური იდენტიფიკატორი Int), String username, Cart cart.
//Designated Init.

class User {
    var userID: Int
    var username: String
    var cart: Cart
    
    init(userID: Int, username: String, cart: Cart) {
        self.userID = userID
        self.username = username
        self.cart = cart
    }
    //Method რომელიც კალათაში ამატებს პროდუქტს.
    func addProductToCart(product: Product) {
        cart.addProduct(product: product)
    }
    //Method რომელიც კალათიდან უშლის პროდუქტს.
    func removeProductFromCart(product:Product) {
        cart.removeProduct(productID: <#T##Int#>)
    }
}
let user = User(userID: 1, username: "liki", cart: Cart(cartID: 1))
user.addProductToCart(product: Product(productID: 123, name: "banani", price: 1.22))



//Method რომელიც checkout (გადახდის)  იმიტაციას გააკეთებს დაგვითვლის თანხას და გაასუფთავებს ჩვენს shopping cart-ს.

//4. გავაკეთოთ იმიტაცია და ვამუშაოთ ჩვენი ობიექტები ერთად.
//შევქმნათ რამოდენიმე პროდუქტი.
//შევქმნათ 2 user-ი, თავისი კალათებით,
//დავუმატოთ ამ იუზერებს კალათებში სხვადასხვა პროდუქტები,
//დავბეჭდოთ price ყველა item-ის ამ იუზერების კალათიდან.
//და ბოლოს გავაკეთოთ სიმულაცია ჩექაუთის, დავაბეჭდინოთ იუზერების გადასხდელი თანხა და გავუსუფთაოთ კალათები.

// შევქმნათ რამოდენიმე პროდუქტი.
class myProduct {
    let name: String
    let price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

// useri
class defaultUser {
    var name: String
    var cart: [myProduct]
    
    init(name: String) {
        self.name = name
        self.cart = []
    }
}

func calculateTotalPrice(cart: [Product]) -> Double {
    var totalPrice = 0.0
    for product in cart {
        totalPrice += product.price
    }
    return totalPrice
    
    // ori momxmarebeli
    var newUser1 = defaultUser(name: "User1")
    var newUser2 = defaultUser(name: "User2")
    
    
    // produktebi
    var myProduct1 = myProduct(name: "saponi", price: 2.22)
    var myProduct2 = myProduct(name: "kata", price: 3.22)
    var myProduct3 = myProduct(name: "yveli", price: 8.08)
    
    //დავუმატოთ ამ იუზერებს კალათებში სხვადასხვა პროდუქტები,
    newUser1.cart += [myProduct1, myProduct2, myProduct3]
    newUser2.cart += [myProduct1, myProduct3]
    
}
////მეექვსე დავალება
//1. შევქმნათ Class-ი SuperEnemy with properties: String name, Int hitPoints (ანუ სიცოცხლის რაოდენობა).სურვილისამებრ დაამატებ properties რომელიც მას აღწერს.
class SuperEnemy {
    var name: String
    var hitPoints: Int
    
    
    init(name: String, hitPoints: Int) {
        self.name = name
        self.hitPoints = hitPoints
    }
}

//2. შევქმნათ Superhero Protocol-ი.
//შემდეგი get only properties: String name, String alias, Bool isEvil და დიქშენარი (dictionary) superPowers [String: Int], სადაც String-ი არის სახელი და Int არის დაზიანება (damage).

protocol Superhero {
    var name: String {get}
    var alias: String {get}
    var isEvil: Bool {get}
    var superPowers: [String: Int] {get}
}
    

class MySuperhero: Superhero {
    var name: String
    var alias: String
    var isEvil: Bool
    var superPowers: [String: Int]
    
    init(name: String, alias: String, isEvil: Bool, superPowers: [String: Int]) {
        self.name = name
        self.alias = alias
        self.isEvil = isEvil
        self.superPowers = superPowers
    }
    

//Method attack, რომელიც მიიღებს target SuperEnemy-ის და დააბრუნებს (return) Int-ს ანუ დარჩენილ სიცოცხლე.
    func attack(target: SuperEnemy) -> Int {
           let totalDamage = superPowers.values.reduce(0, +)
           target.hitPoints -= totalDamage
           if target.hitPoints < 0 {
               target.hitPoints = 0
           }
           return target.hitPoints
       }
//Method performSuperPower, რომელიც მიიღებს SuperEnemy-ის და დააბრუნებს (return) Int-ს, აქაც დარჩენილ სიცოცხლე.
    func performSuperPower(on enemy: SuperEnemy) -> Int {
        var remainingLife = enemy.hitPoints
        for (_, damage) in superPowers {
            remainingLife -= damage
        }
        remainingLife = max(0, remainingLife)
        return remainingLife
    }
   }
    
let enemy1 = SuperEnemy(name: "ურსულა", hitPoints: 100)
let hero1 = MySuperhero(name: "კომბლე", alias: "კომბლიტო", isEvil: false, superPowers: ["size-changing": 40, "xinkals chams kuchebit": 99])

let remainingHitPoints1 = hero1.attack(target: enemy1)
print("ურსულას რემეინინგ ფოინთები: \(remainingHitPoints1)")


let enemy2 = SuperEnemy(name: "ბიძო", hitPoints: 1000)
let hero2 = MySuperhero(name: "წიქარა", alias: "წიქო", isEvil: false, superPowers: ["speed": 60])

let leftHitPoints2 = hero2.attack(target: enemy2)
print("ბიძოს რემეინინგ ფოინთები: \(leftHitPoints2)")


//3. Superhero-ს extension-ი გავაკეთოთ სადაც შევქმნით method-ს რომელიც დაგვი-print-ავს ინფორმაციას სუპერ გმირზე და მის დარჩენილ superPower-ებზე.
//
extension Superhero {
    func SuperHeroInfo() {
        print("Superhero Info:")
        print("Name: \(name)")
        print("Alias: \(alias)")
        print("Is Evil: \(isEvil ? "Yes" : "No")")
        print("Superpowers:")
        for (power, damage) in superPowers {
            print("\(power): Damage \(damage)")
        }
    }
    func printRemainingSuperpowers() {
        print("Remaining Superpowers:")
        for (power, damage) in superPowers {
            print("\(power): Remaining Damage \(damage)")
        }
    }
}
hero1.SuperHeroInfo()
hero1.printRemainingSuperpowers()
hero2.SuperHeroInfo()
hero2.printRemainingSuperpowers()


//4. შევქმნათ რამოდენიმე სუპერგმირი Struct-ი რომელიც ჩვენს Superhero protocol-ს დააიმპლემენტირებს მაგ:struct SpiderMan: Superhero და ავღწეროთ protocol-ში არსებული ცვლადები და მეთოდები.
struct kombleMan: Superhero {
    var name: String
    var alias: String
    var isEvil: Bool
    var superPowers: [String: Int]
    
    func attack(target: SuperEnemy) -> Int {
        let totalDamage = superPowers.values.reduce(0, +)
        target.hitPoints -= totalDamage
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        let randomDamage = Int.random(in: 20...40)
        print("Random Damage for KombleMan: \(randomDamage)")
        target.hitPoints -= randomDamage
        
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        return target.hitPoints
    }
}

struct LizaDog: Superhero {
    var name: String
    var alias: String
    var isEvil: Bool
    var superPowers: [String: Int]
    
    func attack(target: SuperEnemy) -> Int {
        let totalDamage = superPowers.values.reduce(0, +)
        target.hitPoints -= totalDamage
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        let randomDamage = Int.random(in: 20...40)
        print("Random Damage for LizaDog: \(randomDamage)")
        target.hitPoints -= randomDamage
        
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        return target.hitPoints
    }
}
//attack მეთოდში -> 20-იდან 40-ამდე დავაგენერიროთ Int-ის რიცხვი და ეს დაგენერებული damage დავაკლოთ SuperEnemy-ს სიცოცხლეს და დარჩენილი სიცოცხლე დავაბრუნოთ( return).

let kombleManInstance = kombleMan(name: "KombleMan", alias: "Komble", isEvil: false, superPowers: ["Strength": 10, "Speed": 5])
let lizaDogInstance = LizaDog(name: "LizaDog", alias: "GoodDog", isEvil: false, superPowers: ["Strength": 20, "Speed": 30])
var enemy = SuperEnemy(name: "ურსულა", hitPoints: 100)

let updatedHitPointsForKombleMan = kombleManInstance.attack(target: enemy)
print("Updated Hit Points for KombleMan: \(updatedHitPointsForKombleMan)")

let updatedHitPointsForLizaDog = lizaDogInstance.attack(target: enemy)
print("Updated Hit Points for LizaDog: \(updatedHitPointsForLizaDog)")


//performSuperPower-ს შემთხვევაში -> დიქშენერიდან ერთ superPower-ს ვიღებთ და ვაკლებთ enemy-ს (სიცოცხლეს ვაკლებთ). ვშლით ამ დიქშენერიდან გამოყენებულ superPower-ს. გამოყენებული superPower-ი უნდა იყოს დარანდომებული. დარჩენილ enemy-ს სიცოცხლეს ვაბრუნებთ (return).

//ეს ვერ გავაკეთე

//5. შევქმნათ class SuperherSquad,
//რომელიც ჯენერიკ Superhero-s მიიღებს. მაგ: class SuperheroSquad<T: Superhero>.

class SuperheroSquad<T: Superhero> {
    var superheroes: [T]
    
    init(superheroes: [T]) {
        self.superheroes = superheroes
    }
    func listSuperHeroes() {
        for superhero in superheroes {
            print("Name: \(superhero.name), alias: \(superhero.alias), isEvil: \(superhero.isEvil), superPowers: \(superhero.superPowers)")
        }
    }
}

let kombleMan1 = MySuperhero(name: "KombleMan", alias: "Komble", isEvil: false, superPowers: ["Strength": 100, "Speed": 500])
let lizaDog2 = MySuperhero(name: "lizaDog", alias: "GoodDog", isEvil: false, superPowers: ["Strength": 202, "Speed": 303])


let superheroes: [MySuperhero] = [kombleMan1, lizaDog2]
let superheroSquad = SuperheroSquad(superheroes: superheroes)
superheroSquad.listSuperHeroes()



//6.ამ ყველაფრის მერე მოვაწყოთ ერთი ბრძოლა. 🤺🤜🏻🤛🏻
//შევქმნათ method simulateShowdown. ეს method იღებს სუპერგმირების სქვადს და იღებს SuperEnemy-ს.

func simulateShowdown<T: Superhero>(squad: SuperheroSquad<T>, enemy: SuperEnemy) {
    print("gaanadgure \(enemy.name)!")
    for superhero in squad.superheroes {
        let damage = superhero.superPowers.values.reduce(0, +)
        enemy.hitPoints -= damage
        if enemy.hitPoints < 0 {
            enemy.hitPoints = 0
        }
        print("\(superhero.name) attacks \(enemy.name) and deals \(damage) damage.")
        print("\(enemy.name) now has \(enemy.hitPoints) hit points left.")
    }
    if enemy.hitPoints == 0 {
        print("\(enemy.name) has been defeated by the superhero squad!")
    } else {
        print("\(enemy.name) survives the showdown with \(enemy.hitPoints) hit points remaining.")
    }
}

let superheroes = [kombleMan1, lizaDog2]
let enemy = SuperEnemy(name: "ბიძო", hitPoints: 1000)
simulateShowdown(squad: superheroSquad, enemy: enemy)

// meate davaleba
//1-ControlCenter-ი.
//With properties: isLockedDown: Bool და securityCode: String, რომელშიც იქნება რაღაც პაროლი შენახული.
//Method lockdown, რომელიც მიიღებს პაროლს, ჩვენ დავადარებთ ამ პაროლს securityCode-ს და თუ დაემთხვა გავაკეთებთ lockdown-ს.
//Method-ი რომელიც დაგვიბეჭდავს ინფორმაციას lockdown-ის ქვეშ ხომ არაა ჩვენი ControlCenter-ი.

class StationModule {
    var moduleName: String
    var drone: Drone?

    init(moduleName: String, drone: Drone? = nil) {
        self.moduleName = moduleName
        self.drone = drone
    }

    func giveTaskToDrone(task: String) {

        if let drone = drone {
            print("შეასრულე თასქი: \(task)")
        } else {
            print("დრონი არ არის ხელმისაწვდომი")
        }
    }
}

class ControlCenter: StationModule {
    var isLockedDown: Bool
    let securityCode: String
    
    init(moduleName: String, drone: Drone?, isLockedDown: Bool, securityCode: String) {
        self.isLockedDown = isLockedDown
        self.securityCode = securityCode
        super.init(moduleName: moduleName, drone: drone)
    }
    func lockdown(password: String) {
        if password == securityCode {
            isLockedDown = true
            print("ControlCenter ლოქდაუნშია")
        } else {
            print("არასწორი პაროლი")
        }
    }
    func printStatus() {
        if isLockedDown {
            print("არასწორი პაროლი")
        } else {
            print("ControlCenter ლოქდაუნშია")
        }
    }
}

//2-ResearchLab-ი.
//With properties: String Array - ნიმუშების შესანახად.
//Method რომელიც მოიპოვებს(დაამატებს) ნიმუშებს ჩვენს Array-ში.

class ResearchLab: StationModule {
    var sampleArray: [String]

    init(moduleName: String, drone: Drone?, sampleArray: [String]) {
        self.sampleArray = sampleArray
        super.init(moduleName: moduleName, drone: drone)
    }
    func addSamples(sample: String) {
        sampleArray.append(sample)
        print("\(moduleName) დაამატე ნიმუშუ: \(sample)")
    }
}

//3-LifeSupportSystem-ა.With properties: oxygenLevel: Int, რომელიც გააკონტროლებს ჟანგბადის დონეს.Method რომელიც გვეტყვის ჟანგბადის სტატუსზე.

class LifeSupportSystem: StationModule {
    var oxygenLevel: Int
    
    init(moduleName: String, drone: Drone?, oxygenLevel:Int) {
        self.oxygenLevel = oxygenLevel
        super.init(moduleName: moduleName, drone: drone)
    }
    
    func oxygenLevelStatus() -> String {
        if oxygenLevel > 0 {
            return "სისტემაში ჟანგბადის დონე მაღალია"
        } else {
            return "სისტემაში ჟანგბადის დონე არაა"
        }
    }
}

//4-StationModule-ი
//With properties: moduleName: String და drone: Drone? (optional).Method რომელიც დრონს მისცემს თასქს.
//ეს გავაკეთე ზევით

//5-ჩვენი ControlCenter-ი ResearchLab-ი და LifeSupportSystem-ა გავხადოთ StationModule-ის subClass.
//ესეც გავაკეთე, სადაც ამ სამის კლასები მაქვს გაწერილი

//6-Drone.
//With properties: task: String? (optional), unowned var assignedModule: StationModule, weak var missionControlLink: MissionControl? (optional). //Method რომელიც შეამოწმებს აქვს თუ არა დრონს თასქი და თუ აქვს დაგვიბჭდავს რა სამუშაოს ასრულებს ის.

class Drone {
    var task: String?
    unowned var assignedModule: StationModule
    weak var missionControlLink: MissionControl?
    
    init(task: String? = nil, assignedModule: StationModule, missionControlLink: MissionControl? = nil) {
        self.task = task
        self.assignedModule = assignedModule
        self.missionControlLink = missionControlLink
    }
    func checkDroneStatus() {
        if let task = task {
            print("დრონს შესასრულებლად გადაცემული აქვს: \(task)")
        } else {
            print("დრონს არ აქვს დავალება.")
        }
    }
}
//7-OrbitronSpaceStation-ი შევქმნათ, შიგნით ავაწყოთ ჩვენი მოდულები ControlCenter-ი, ResearchLab-ი და LifeSupportSystem-ა. ასევე ამ მოდულებისთვის გავაკეთოთ თითო დრონი და მივაწოდოთ ამ მოდულებს რათა მათ გამოყენება შეძლონ.ასევე ჩვენს OrbitronSpaceStation-ს შევუქმნათ ფუნქციონალი lockdown-ის რომელიც საჭიროების შემთხვევაში controlCenter-ს დალოქავს.
class OrbitronSpaceStation {
    let controlCenter: ControlCenter
    let researchLab: ResearchLab
    let lifeSupportSystem: LifeSupportSystem
    var isLockedDown: Bool
    
    init(controlCenter: ControlCenter, researchLab: ResearchLab, lifeSupportSystem: LifeSupportSystem, isLockedDown: Bool) {
        self.controlCenter = controlCenter
        self.researchLab = researchLab
        self.lifeSupportSystem = lifeSupportSystem
        self.isLockedDown = false
      
        let controlCenterDrone =  Drone(assignedModule: controlCenter)
        let researchLabDrone = Drone(assignedModule: researchLab)
        let lifeSupportDrone = Drone(assignedModule: lifeSupportSystem)
    }
    func lockdown() {
         if isLockedDown {
             print("OrbitronSpaceStation ლოქდაუნშია")
         } else {
             print("ტყუილი განგაში")
         }
    }
}

//8-MissionControl.//With properties: spaceStation: OrbitronSpaceStation? (optional).
//Method რომ დაუკავშირდეს OrbitronSpaceStation-ს და დაამყაროს მასთან კავშირი.
//Method requestControlCenterStatus-ი.
//Method requestOxygenStatus-ი.
//Method requestDroneStatus რომელიც გაარკვევს რას აკეთებს კონკრეტული მოდულის დრონი.

class MissionControl {
    var spaceStation: OrbitronSpaceStation?
    
    init(spaceStation: OrbitronSpaceStation? = nil) {
        self.spaceStation = spaceStation
    }
    func connectToSpaceStation(spaceStation: OrbitronSpaceStation) {
        self.spaceStation = spaceStation
    }
    func requestControlCenterStatus() {
        if let controlCenter = spaceStation {
            print("კონტროლ ცენტრი ჩაკეტილია \(controlCenter.isLockedDown ? "კი" : "არა")")
              } else {
                  print("არ შედგა კავშირი.")
              }
          }
    func requestOxygenStatus() {
        if let lifeSupportSystem = spaceStation {
            print("ჟანგბადის დონე: \(lifeSupportSystem)%")
        } else {
            print("არ შედგა კავშირი")
        }
    }
func requestDroneStatus(module: StationModule) {
        if let drone = module.drone {
            drone.checkDroneStatus()
        } else {
            print("დრონი არ არის დაკავშირებული\(module.moduleName) მოდულთან.")
        }
    }
}
 
//9-და ბოლოს
//შევქმნათ OrbitronSpaceStation,
//შევქმნათ MissionControl-ი,
//missionControl-ი დავაკავშიროთ OrbitronSpaceStation სისტემასთან,
//როცა კავშირი შედგება missionControl-ით მოვითხოვოთ controlCenter-ის status-ი.
//controlCenter-ის, researchLab-ის და lifeSupport-ის მოდულების დრონებს დავურიგოთ თასქები.
//შევამოწმოთ დრონების სტატუსები.
//შევამოწმოთ ჟანგბადის რაოდენობა.
//შევამოწმოთ ლოქდაუნის ფუნქციონალი და შევამოწმოთ დაილოქა თუ არა ხომალდი სწორი პაროლი შევიყვანეთ თუ არა.

let controlCenter = ControlCenter(moduleName: "Control Center", drone: nil, isLockedDown: false, securityCode: "858919")
let researchLab = ResearchLab(moduleName: "Research Lab", drone: nil, sampleArray: [])
let lifeSupportSystem = LifeSupportSystem(moduleName: "Life Support System", drone: nil, oxygenLevel: 100)


let orbitronSpaceStation = OrbitronSpaceStation(controlCenter: controlCenter, researchLab: researchLab, lifeSupportSystem: lifeSupportSystem, isLockedDown: false)
let missionControl = MissionControl()

missionControl.connectToSpaceStation(spaceStation: orbitronSpaceStation)
missionControl.requestControlCenterStatus()


let controlCenterDrone = Drone(task: "Control Center Task", assignedModule: controlCenter, missionControlLink: missionControl)
let researchLabDrone = Drone(task: "Research Lab Task", assignedModule: researchLab, missionControlLink: missionControl)
let lifeSupportDrone = Drone(task: "Life Support Task", assignedModule: lifeSupportSystem, missionControlLink: missionControl)


controlCenterDrone.checkDroneStatus()
researchLabDrone.checkDroneStatus()
lifeSupportDrone.checkDroneStatus()

missionControl.requestOxygenStatus()


orbitronSpaceStation.lockdown
missionControl.requestControlCenterStatus()


/////მეათე დავალება
//1. მოდით ჩვენს ხომალდს მივხედოთ SOLID Principle-ბის დაცვით.
//შევქმნათ Class-ი PirateShip⛴️🏴‍☠️, with properties: როგორციაა name, cannonsCount, crew👫 და cargo🍗🍖🥃🍺.Methods: firingCannons, adding/removing crew, adding/removing cargo. დავიცვათ Single Responsibility ამისათვის - cargo management და adding/removing crew ფუნქციონალი უნდა განვაცალკევოთ.შესაბამისად მოდი შევქმნათ 2 Manager class-ი (CargoManager, CrewManager), სადაც გავიტანთ crew-ს და cargo-ს და შესაბამის methods გავიტანთ ამ კლასებში. //ამის შემდეგ ჩვენს PirateShip-ში გვრჩება properties: name, cannonsCount და 2 მენეჯერი რომელიც ცალ-ცალკე გააკონტროლებს ჩვენი გემის ფუნქციონალს. Methods გვექნება addCargo, removeCargo, listCargo, addCrew, removeCrew, listCrew, cannonCount, fireCannon(count:) და ამ Method-ებში ჩვენი მენეჯერების შესაბამისი მეთოდები გამოვიყენოთ. //დავიცვათ Open/Closed პრინციპი. ჩვენი მენეჯერები არ უნდა იყოს წვდომადი გარედან და მათი ფუნქციონალის გამოყენება მხოლოდ გემის წევრებს უნდა შეეძლოთ. //დავიცვათ Liskov Substituion, შევქმნათ PirateShip-ის შვილობილი კლასები Frigate და Galleon. დაამატეთ ფუნქციონალი და ცვლადები თქვენი სურვილის მიხედვით, მაგრამ როცა PirateShip-ს Frigate-ით ან Galleon-ით ამოვცვლით ქცევა არ უნდა შეგვეცვალოს. //დავიცვათ Interface Segregation. ყველა გემს არ აქვს საშუალება რომ იქონიონ cannon-ები და აწარმოონ ბრძოლა. ამიტომ შევქმნათ protocol Cannons შესაბამისი მეთოდები და დავაიმპლემენტიროთ PirateShip-ში. //დავიცვათ Dependency Inversion პრინციპი, ამიტომ ჩვენს manager კლასებს გავუკეთოთ პროტოკოლები CargoManaging და CrewManaging სადაც მეთოდებს ავღწერთ რომლებიც აქამდე კლასებში გვქონდა, ხოლო PirateShip-ში CargoManager-ს და CrewManager-ს ჩავანაცვლებთ ამ Protocol-ის ტიპის ცვლადებით, ამითი ჩვენს PirateShips აღარ ეცოდინება სპეციფიური დეტალები თუ როგორ ხდება cargo-ს და crew-ის მენეჯმენტი  მას მხოლოდ აბსტრაქტულად ეცოდინება ის რომ ეს შესაძლებელია. ასევე ამ პრინციპის დაცვით ჩვენ საშუალება გვექნება ნებისმიერ დროს შევცვალოთ Crew და Cargo Management-ის მართვის სისტემა, უბრალოდ ჩავაწვდით ახალ კლასს სხვა იმპლემენტაციით რომელიც ამ პროტოკოლს აიმპლემენტირებს, ამის საშვალებით ჩვენ ნებისმიერ დროს შეგვეძლება PirateShip-ში მარტივი ცვლილებების შეტანა, ისე რომ თვითონ კლასში ცვლილებების გაკეთება არ მოგვიწევს.

protocol Firable {
    func fireCannons()
}

protocol Countable {
    func cannonCount ()
}

protocol CargoManaging {
    var cargo: [String] { get set }
    func addCargo()
    func removeCargo()
    func listCargo()
    }

protocol CrewManaging {
    var crew: [String] { get set }
    func addCrew()
    func removeCrew()
    func listCrew()
    }

class PirateShip: Firable, Countable, CargoManaging, CrewManaging {
    func addCargo() {
    }
    func removeCargo() {
    }
    func listCargo() {
    }
    func addCrew() {
    }
    func removeCrew() {
    }
    func listCrew() {
    }
    
    var name: String
    var cannonsCount: Int
    var cargo: [String]
    var crew: [String]
//    private var cargoManager: CargoManager
//    private var crewManager: CrewManager
    
    init(name: String, cannonsCount: Int, cargo: [String], crew: [String]) {
        self.name = name
        self.cannonsCount = cannonsCount
        self.cargo = cargo
        self.crew = crew
//        self.cargoManager = CargoManager(cargo: cargo)
//        self.crewManager = CrewManager(crew: crew)
    }
    func fireCannons() {
    }
    func cannonCount () {
    }
}

private class CargoManager {
    var cargo: [String]
    
    init(cargo: [String]) {
        self.cargo = cargo
    }
    
    func addCargo(item: String) {
    }
    func removeCargo(item: String) {
    }
    func listCargo() {
        }
}

private class CrewManager {
    var crew: [String]
    
    init(crew: [String]) {
        self.crew = crew
    }
    func addCrew(item: String) {
    }
    func removeCrew(item: String) {
    }
    func listCrew() {
    }
}

class Frigate: PirateShip {
    var numberOfDecks: Int

    init(name: String, cannonsCount: Int, cargo: [String], crew: [String], numberOfDecks: Int) {
        self.numberOfDecks = numberOfDecks
        super.init(name: name, cannonsCount: cannonsCount, cargo: cargo, crew: crew)
    }
    func countDecks() -> Int {
           return numberOfDecks
       }
}

class Galleon: PirateShip {
    var cargoHoldCapacity: Int

    init(name: String, cannonsCount: Int, cargo: [String], crew: [String], cargoHoldCapacity: Int) {
        self.cargoHoldCapacity = cargoHoldCapacity
        super.init(name: name, cannonsCount: cannonsCount, cargo: cargo, crew: crew)
    }
    func countCargoHoldCapacity() -> Int {
        return cargoHoldCapacity
    }
}
//2.TreasureMap KISS პრინციპის დაცვით.
//TreasureMap კლასი გვექნება ძალიან მარტივი ორი ფროფერთით: x და y ექნება. ერთი მეთოდი hintToTreasure, რომელიც მიიღებს x და y-ს და თუ ვიპოვეთ ჩვენი საგანძური დაგვიწერს ამას, თუ არასწორად მივუთითებთ კოორდინატებს მაშინ უნდა მოგვცეს hint-ი თუ საით უნდა წავიდეთ რომ მივაგნოთ საგანძურს.

class TreasureMap {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func hintToTreasure(userX: Int, userY: Int) -> String {
        if userX == x && userY == y {
            return "გილოცავ, განძი ნაპოვნია!"
        } else if userX < x {
            return "ცოტაც დარჩა, დასავლეთით იცურეთ."
        } else if userX > x {
            return "აღმოსავლეთით უნდა იცუროთ."
        } else if userY < y {
            return "ჩრდილოეთით უნდა წახვიდეთ."
        } else {
            return "სამხრეთით უნდა წახვიდეთ."
        }
    }
}

//3.SeaAdventure YAGNI პრინციპის დაცვით, პირატების მოგზაურობა თავგადასავლის გარეშე ვის გაუგია შევქმნათ მარტივი SeaAdventure class-ი, ერთი String adventureType ფროფერთით და ერთი მეთოდით encounter რომელიც დაგვიბეჭდავს თუ რა adventure-ს წააწყდა ჩვენი ხომალდი. დავიცვათ YAGNI და არ დავამატოთ გავრცობილი ფუნქციონალი რომელიც სხვადასხვა adventure-ს შეიძლება მოიცავდეს, რომელიც ჯერ ჯერობით არ გვჭირდება.
    
    class SeaAdventure {
        var adventureType: String
        
        init(adventureType: String) {
            self.adventureType = adventureType
        }
        func encounter() {
        }
    }

//4.PirateCode DRY პრინციპის დაცვით. შევქმნათ მარტივი კლასი PirateCode, რომელსაც ექნება ორი მეთოდი parley და mutiny, ამ მეთოდებში უნდა დავიწყოთ განხილვა მოლაპარაკებებზე წავალთ თუ ვიბრძოლებთ ეს კოდი რომ ორივე მეთოდში არ გაგვიმეორდეს დავიცვათ DRY პრინციპი და შევქმნათ ერთი private ფუნქცია discussTerms(term: String), რომელიც შეგვატყობინებს იმას რომ მოლაპარაკებები დაწყებულია, ხოლო parley და mutiny მოლაპარაკების შედეგს დაგვიბეჭდავენ.
    
    class PirateCode {
        private func discussTerms(term: String) {
            print("მოლაპარაკებები დაწყებულია. ამ პირობაზე დავთანხმდებით: \(term)")
        }
        func parley(term: String) {
            print("Parley: დავთანხმდით ამ პირობაზე: \(term)")
        }
        func mutiny(term: String) {
            print("Mutiny: არ დავთანხმებულვართ პირობაზე: \(term)")
        }
    }
//5. დროა საგანძურის საძებნელად გავეშვათ. (Treasure hunting😄💰) შევქმნათ ჩვენი ხომალდი დავარქვათ სახელი, ეკიპაჟი დავამატოთ, საომრად გავამზადოთ, ავტვირთოთ cargo. შევქმნათ ჩვენი საგანძულის კარტა და გადავაწდოთ კოორდინატები.შევქმნათ პირატის კოდექსი რომელიც მოგზაურობისას დაგვეხმარება.
//შევქმნათ SeaAdventure რომელსაც ჩვენი ეკიპაჟი შეიძლება გადააწყდეს, ამ შემთხვევაში ეს იქნება FlyingDutchman-თან გადაყრა.//პირველ რიგში დავიწყოთ ჩვენი საგანძურის ძებნით შევქმნათ ორი ცვლადი საწყისი კოორდინატები საიდანაც ჩვენი გემი აიღებს გეზს, და treasureMap-ის hintToTreasure მეთოდის გამოყენებით ვეცადოთ ვიპოვოთ ჩვენი საგანძური.//საგანძურის პოვნის შემდეგ გადააწყდება adventure-ს, დავბეჭდოთ რა adventure-ა, PirateCode-ს გამოყენებით გადავწყვიტოთ რას იზამს ჩვენი კაპიტანი, ეცდება აარიდოს თავი თავგადასავალს თუ მიხვდება რომ აზრი არ აქვს მოლაპარაკებებს და შეუტევს? არჩევის შემდეგ რის განხილვას მოახდენს თავის ეკიპაჟთან ერთად? როგორ გაიქცეს თუ როგორ შეუტიოს ეფექტურად? გამოიყენებს ის ყველა არსებულ cannon-ს ხომალდზე თუ არა?//ამ რთულ გადაწყვეტილების მიღების შემდეგ ჩვენ უკვე ვეღარასდროს ვერ გავიგებთ თუ როგორ დამთავრდა ჩვენი კაპიტნის და მისი ეკიპაჟის ამბავი.😄
        
let pirateShip = PirateShip(name: "TBC", cannonsCount: 20, cargo: ["შოკოლადი", "ნამცხვრები", "ავოკადო"], crew: ["ნანა", "ვასო", "სანდრო"])

    
let treasureMap = TreasureMap(x: 42, y: 17)
let userX = 40
let userY = 19

let hint = treasureMap.hintToTreasure(userX: userX, userY: userY)
print(hint)

let seaAdventure = SeaAdventure(adventureType: "Flying Dutchman")
 
let pirateCode = PirateCode()
let term = "ვასოს გადავცემთ ტყვედ"
pirateCode.parley(term: "\(term)")

    pirateShip.addCargo()
    pirateShip.addCrew()
    seaAdventure.encounter()

print("Pirate Ship: \(pirateShip.name)")
print("Cannons Count: \(pirateShip.cannonsCount)")
print("Cargo: \(pirateShip.cargo)")
print("Crew: \(pirateShip.crew)")
print("Sea Adventure: \(seaAdventure.adventureType)")
print(pirateCode)

//davaleba 14
// iPhone 14 pro

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var switchControl: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchButton(_ sender: UISwitch) {
        if sender.isOn {
            labelText.text = "უსგ"
        } else {
            labelText.text = "უსჯ"
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        if let text1 = number.text, let text2 = number2.text,
           let num1 = Int(text1), let num2 = Int(text2) {
            var resultText = "Result: "
            if switchControl.isOn {
                let gcd = calculateGCD(num1, num2)
                resultText += "\(gcd)"
            } else {
                let lcm = calculateLCM(num1, num2)
                resultText += "\(lcm)"
            }
            answer.text = resultText
        } else {
            answer.text = "Invalid"
        }
    }
    
    func calculateLCM(_ num1: Int, _ num2: Int) -> Int {
        
        let product = num1 * num2
        let gcd = calculateGCD(num1, num2)
        let lcm = product / gcd
        return lcm
    }
    
    func calculateGCD(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return calculateGCD(b, a % b)
        }
    }
}

