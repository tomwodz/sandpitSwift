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
