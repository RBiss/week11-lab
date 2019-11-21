/* IMG 204 - Week 11 Lab */
//Student name: Rick Bissonette
//Student number: n2030872

class Container {
    let capacity: Double
    var sections: Int
    
    init(capacity: Double, sections: Int) {
        self.capacity = capacity
        self.sections = sections
    }
    
    init(capacity: Double) {
        self.capacity = capacity
        self.sections = 1
    }
    
    convenience init(similarTo container: Container) {
        self.init(capacity: container.capacity, sections: container.sections)
    }
}

//A subclass with no designated initializers - inherits all designated initializers

class SubContainer: Container {
  
    
}
//A subclass with superclass initializers implementations, or with automatic inheritance - inherits all convenience initializers (i.e. write overrides for the designated initializers)
class EvenSubber: Container {
    
    
    override init(capacity: Double) {
        22.2
super.init(capacity: 65.5, sections: 4)
    
    
}
}
//Task 1. Imagine you are modeling a pet shop: Create an Animal class as a base class for Animal subclasses you will make in task 2. The Animal class should include 'name' and 'sound' String properties and one function 'call' that prints a string including both 'name' and 'sound'. Include two designated initializers and one convenience initializer.
class Animal {
    var name: String
    var sound: String
    var breed: String
    init(name: String, sound: String, breed: String) {
        self.name = name
        self.sound = sound
        self.breed = breed
    }
    init(name: String) {
        self.name = name
        self.sound = "Moo"
        self.breed = "Mixed breed"
    }
    convenience init(animal: Animal){
        self.init(name: animal.name, sound: animal.sound, breed: animal.breed )
        
    }
    func call() {
        print ("\(name) \(sound) \(breed)")
    }
}

//Task 2. Create three subclasses of Animal for specific pets of your choice (e.g. dog, cat, goldfish, etc.) Each subclass should contain some additional pet-specific data. One subclass must inherit all Animal initializers, one should implement only one Animal initializer, and one should implement the two designated Animal initializers.

class Dog: Animal {
        init(breed: String, name: String, sound: String) {
            super.init(name: name, sound: sound, breed: breed)
    }
}
class Cat: Animal {
    var color: String
    init(breed: String, name: String, sound: String, color: String) {
        self.color=color
        super.init(name: name, sound: sound, breed: breed)
    }
    
}
class Goldfish: Animal {
    init(name: String, breed: String, sound: String) {
        super.init(name: name, sound: sound, breed: breed)
    }
}
let test = Dog(breed: "Bichon", name: "Bill", sound: "Bark")
test.call() //(color: "gold")
//Task 3. Create a protocol called Area that defines a read-only property 'area' of type Double, and a function 'report' that returns a String.
protocol Area {
    
    var area: Double {get}
    
    func report() -> String
  
}

//Task 4. Implement Area with structs representing Square, Triangle, and Circle.

struct Square: Area {
    var area = 5.5
    
func report() -> String {
      return "\(area) * \(area)."
    }
    
    
}

struct Triangle: Area {
    var area = 5.5
    var height = 6.5
    
    func report() -> String {
        return "((\(area) * \(area)) + (\(height) * \(height)).squareRoot)."
    }
    
}

struct Circle: Area {
    var area = 5.5
    var pi = 3.14159265359
    
    func report() -> String {
        return "((\(pi) * \(area)) * 2)."
    }
    
    
}
