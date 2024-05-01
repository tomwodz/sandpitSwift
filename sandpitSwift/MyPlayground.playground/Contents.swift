import UIKit

print("Hello World!")

var first = 1
let second = 2

var result = first + second

first += 1

result = first + second

let firstName = "Tomek"

print(firstName)

var points = 0

points += 1

print(points)

let login: String = "tomwodz"

var number: Float = 777

var firstChar: Character = "T"

var sampleDouble: Double = 20

//jawnie
sampleDouble =  sampleDouble + Double(number)

//silne typowanie
var x = 2.0
print(x)

var y = 7_000_000_000
var z = 7000000000
if y == z  {
    print(true)
}

var a = 10
var r =  12

var str = "Radius of our circle " + String(r)

var field = a * a

print(str)

// notacja \(napis)
var age = 99
var description = "I'm \(age) years old."
var description2 = "I'm \(age*10) years old."

var msg = "Tutaj jakiś tekst"
msg.append(contentsOf: " TEST")
print(msg)
msg.lowercased()
msg.capitalized
msg.uppercased()

// muszą być zainicjalizowane przed użyciem
// ? zmienne opcjonalne
var k: String?
// nil
k = "Napis"

print(k!)

var msgOptionial: String?
msgOptionial = "Wiadomość"
msgOptionial?.uppercased()

var myResult: Double = 1000

myResult = myResult + 10

myResult += 7
myResult -= 10
myResult *= 2
myResult /= 10

var kk = 10
var pp = 20
var tmp = kk
kk = pp
pp = tmp

//krotka
(kk,pp) = (pp,kk)

if kk > pp {
    print(kk)
} else {
    print(pp)
}

var thnik = false
var ee = 100

if !thnik && ee < 30 {
    print("true")
} else if ee < 120 {
    print("false")
}

var next: Int
next = ee < 99 ? ee : 99
print(next)

switch ee {
case 0,1,3,4:
    print(ee)
case 5...99:
    print(ee)
case 100:
    print(ee)
default:
    print("default")
}


var temerature = 30

switch temerature {
case ...(-1):
    print("Bardzo zimno")
case 0...10:
    print("Zimno")
case 11...20:
    print("Ciepło")
case 21...36:
    print("Bardzo ciepło")
case 40...:
    print("Koniec świata")
default:
    print("Inne")
}

var name1 = "Tomek"
var day1 = "Czwartek"

func hello(name:String,day:String){
    print("Cześć " + name)
    print("Dzisiaj mamy " + day)
}

hello(name: name1, day: day1)
hello(name: "Justyna", day: "Środa")

func helloToAt(to name: String,at day: String){
    print("Cześć " + name)
    print("Dzisiaj mamy " + day)
}
helloToAt(to: "Justyna", at: "Środa")

func helloNone(_ name: String, _ day: String){
    print("Cześć " + name)
    print("Dzisiaj mamy " + day)
}

helloNone("Adam", "Niedziela")

//Paramtery funkcji: zmienne, wartości, tablice, funkcje, obiekty, domknięcia

func has10Size(text: String) -> Bool {
    return text.count == 10
}

has10Size(text: "To jest jakiś tekst")
has10Size(text:"ABCDEFGHIJ")

func has10SizeInfo(text: String) -> (Bool, Int) {
    return (text.count == 10, text.count)
}

has10SizeInfo(text: "To jest jakiś tekst")

var nn: Bool
var mm: Int
(nn, mm) = has10SizeInfo(text: "ABCDEFGHIJ")

func factorial(n: Int) -> Int {
    if(n == 1) {
        return n
    } else {
        return n * factorial(n: n-1)
    }
}

factorial(n: 1)
factorial(n: 5)

var tab = [1,2,3,4,5,10,11,30,66]

print(tab[0])
print(tab.count)

tab.append(22)
tab.count
tab.remove(at: 9)
tab.count

var lotto = [0,0,0,0,0,0]

lotto[0] = Int((arc4random() % 49)) + 1
lotto[1] = Int((arc4random() % 49)) + 1
lotto[2] = Int((arc4random() % 49)) + 1
lotto[3] = Int((arc4random() % 49)) + 1
lotto[4] = Int((arc4random() % 49)) + 1
lotto[5] = Int((arc4random() % 49)) + 1

print(lotto)

var fruitsOne = ["Orange","Apple"]
var fruitsSecond = ["Bananna"]

fruitsSecond.append(contentsOf: fruitsOne)

print(fruitsSecond)

var map = ["PLN":"Zloty", "USD":"Dolar"]

var cur = ["EURO":4.5,"USD":4.1]
var pln = 100.0
print("\(pln) PLN = \((100.0/cur["USD"]!)) USD")

if let usd = cur["USD"] {
    print("\(pln) PLN = \((100.0/cur["USD"]!)) USD")
}

var table = [10,11,12,13,14]

var sum = 0
for element in table {
    sum = sum + element
}
print(sum)

var ss = 0
for i in 0..<table.count {
    ss = ss + table[i]
}
print(ss)

let credit = 100000.0
let years = 5
let perc = 0.06
var le = credit
var ol = 0.0

for m in 1 ... years * 12 {
    let capital  = credit / Double(years * 12)
    let interest = (le * perc)/12.0
    let capitalAndInterest = capital + interest
    print("\(m) \(capitalAndInterest) \(capital) \(interest)")
    le -= capital
    ol += capitalAndInterest
}
print(ol)

le = credit
var mon = 0
var wan = 1000.0
ol = 0.0

while (le > 0) {
    mon += 1
    let interest = (le * perc)/12.0
    let capital = wan - interest
    le -= capital
    print("\(mon) \(capital) \(interest)")
    ol += interest + capital
}
print("\(ol)")

var tableToSort = [22,44,66,77,55,88,99,11,111,222]

for _ in 1 ... tableToSort.count {
    for i in 0 ..< (tableToSort.count - 1) {
        let i1 = i
        let i2 = i + 1
        if tableToSort[i1]>tableToSort[i2] {
            (tableToSort[i1], tableToSort[i2]) = (tableToSort[i2], tableToSort[i1])
        }
    }
}
print(tableToSort)

tableToSort = [22,44,66,77,55,88,99,11,111,222]

print(tableToSort)

tableToSort.sort()
print(tableToSort)

func random(max: Int, count: Int) -> [Int]{
    var table = [Int]()
    
    func draw() -> Int {
        return Int(arc4random()) % max + 1
    }
    
    while table.count < count {
        var numberGame: Int = 0
        repeat {
            numberGame = draw()
        } while table.contains(numberGame)
        table.append(numberGame)
    }
    
    return table
}

random(max: 70, count: 5)

func game(max: Int) -> ((Int)->[Int]){
    
    func randomGame(count: Int) -> [Int]{
        var table = [Int]()
        
        func draw() -> Int {
            return Int(arc4random()) % max + 1
        }
        
        while table.count < count {
            var numberGame: Int = 0
            repeat {
                numberGame = draw()
            } while table.contains(numberGame)
            table.append(numberGame)
        }
        
        return table
    }
    return randomGame
}

let newGame = game(max: 60)
newGame(7)

let newGame2 = game(max: 99)
newGame2(6)

func play(howMuch: Int, toDraw: Int, game: ((Int)->[Int])) -> [[Int]]{
    var coupon = [[Int]]()
    for _ in 1 ... howMuch {
        coupon.append(game(toDraw))
    }
    return coupon
}

play(howMuch: 7, toDraw: 8, game: newGame)

play(howMuch: 7, toDraw: 8, game: { num in
var tab = [Int]()
    for _ in 1 ... num {
        tab.append(7)
    }
    return tab
})

play(howMuch: 7, toDraw: 8) { num in
var tab = [Int]()
    for _ in 1 ... num {
        tab.append(7)
    }
    return tab
}

struct Point{
    var x: Int, y:Int
}

Point(x: 9, y: 12)

struct Movie {
        var name: String
        var director: String
        var year: Int
}

var movie = Movie(name: "Speed", director: "Tom", year: 1999)

var movies = [Movie]()

movies.append(movie)
movies.append(Movie(name: "Speed 2", director: "Tom", year: 2002))

func writeMovie(movie:Movie){
    print("\(movie.director) \(movie.name) \(movie.year)")
}

for m in movies {
    writeMovie(movie: m)
}

struct Film {
    var name: String
    var director: String
    var year: Int
    
    func writeFilm(){
        print("\(director) \(name) \(year)")
    }
}

var film = Film(name: "Speed", director: "Tom", year: 1999)
film.writeFilm()



