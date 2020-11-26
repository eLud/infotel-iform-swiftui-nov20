import UIKit

var str = "Hello, playground"
str = "Hello Again"

let languageName = "Swift"
//languageName = "C#"

var userIsUpToDate = false

let version: Float
if userIsUpToDate{
    version = 5.3
} else {
    version = 5.2
}

print(version)

let inital: Character = "L"

// Typage fort
// Variables et constantes
// Inférence de type

let a: Int = 5
let b: Int = 2

let c = Float(a) / Float(b)

// Collections

//Tableaux -> Array

var villes: [String] = ["Paris", "Marseille", "Toulouse", "Bordeaux"]
var villes2: Array<String> = []

var elementAt0 = villes[0]
elementAt0.append("!")
elementAt0
villes[0]
villes[0] = "Lyon"
villes.append("Paris")
villes.isEmpty
villes.count
villes.removeLast(2)
villes.insert("Test", at: 2)
villes.append(contentsOf: ["Test1", "Test2"])

let anyTab: [Any] = ["Ludovic", 34, 78]


//Dictionnaires -> Dictionary

var population: [String:Int] = ["Paris": 2187526, "Marseille": 863310]
var population2: Dictionary<String, Int> = [:]

let popParis = population["Paris"]
let popToulouse = population["Toulouse"]

population["Marseille"] = 863311
population["Toulouse"] = 479553

population.isEmpty
population.count
population.removeValue(forKey: "Toulouse")
population["Toulouse"] = nil

//Carte d'identité

let prenom = "Ludovic"
var age = 34

var adresses: [String] = []

//Ensemble -> Set

var citiesIveLivedIn: Set = ["Paris", "Bordeaux"]
citiesIveLivedIn.insert("Lyon")
citiesIveLivedIn.insert("Lyon")
citiesIveLivedIn.count

//: # Modélisation

//Structures, classes et énumération

struct Person {
    let firstName: String
    var lastName: String
    var age: Int

    // get-only computed property
    var fullName: String {
        return firstName + " " + lastName
    }

    func sayHello() {
        print("Hello, my name is \(firstName), and I'm \(age).")
    }

    func eat(_ aliment: String, with friend: Person) {
        print(aliment, friend, separator: " -- ")
    }

    mutating func happyBirthday() {
        age += 1
    }
}

var me = Person(firstName: "Ludovic", lastName: "Ollagnier", age: 34)
me.sayHello()
let somebodyElse = me
me.age += 1
print(me.age)
print(somebodyElse.age)

me.eat("Pizza", with: somebodyElse)

me.happyBirthday()
somebodyElse.sayHello()

class Animal {

    //Propriété stockée (stored property)
    var age: Int

    init(age: Int) {
        self.age = age
    }
}

class Cat: Animal {
    let name: String

    //Propriété calculée (computed property)
    var humanAge: Int {
        get {
            return age * 7
        }

        set {
            age = newValue / 7
        }
    }

    init(name: String, age: Int) {
        self.name = name
        super.init(age: age)
    }

    convenience init() {
        self.init(name: "Félix", age: 0)
    }

    func meoww() {
        print("Miaou")
    }

    func happyBirthday() {
        age += 1
    }

    deinit {
        // Du code qui doit être éxécuté avant la destruction
    }
}

let myCat = Cat(name: "Félix", age: 0)
let anotherCat = myCat
myCat.age += 1
print(myCat.age)
print(anotherCat.age)

myCat.humanAge
myCat.humanAge = 15
myCat.age

//Struct ont un init "memberwise" autogénéré, pas les classes qui ont seulement un init par défaut si valeurs initiales fournies

// Struct -> Value type -> Copies
// Class -> Reference type -> références

// Classes peuvent hériter, pas les structures (limitées aux protocoles)

/*:
 - Note:
Class ou struct ?
Si references -> Class, si doute -> Struct
Héritage ? -> Class sinon Struct
Class si imposé par un framework
*/

//: #Optionals

var populationOptional: [String:Int] = ["Paris": 2187526, "Marseille": 863310]

//Int
//nil
//let pop: Optional<Int> = populationOptional["Toulouse"]
let pop: Int? = populationOptional["Paris"]

//Déballage

//Force-Unwrap operator (!)
// Déballer un optionel "nil" donne un crash garanti

//let doublePop = pop! * 2

//Pour éviter un crash on test
if pop != nil {
    let double = pop! * 2
    print(double)
}

// Optional binding, ou syntaxe if-let
if let population = pop {
    let double = population * 2
    print(double)
}

if let intValue = Int("123456") {
    print(intValue * 2)
}

if let cityUppercased = villes.first?.uppercased() {
    print(cityUppercased)
} else {
    print("No cities")
}

//Guard

//villes.removeAll()
guard let cityLowercased = villes.last?.lowercased() else { fatalError() }
print(cityLowercased)

// Bonnes pratiques
