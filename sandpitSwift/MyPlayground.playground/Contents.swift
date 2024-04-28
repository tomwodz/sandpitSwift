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
