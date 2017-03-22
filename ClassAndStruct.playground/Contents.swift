//: Playground - noun: a place where people can play

// STRUCT
// assign directly
// auto init all attributes
// value type
struct Measurement {
    var height: Double
    var weight: Double
    
    func bmiValue() -> Double {
        return weight / (height/100 * height/100)
    }
}

// CLASS
// reference type
class Person {
    var name: String    = "NGUYEN CONG TRUONG"
    var height: Double  = 1.8
    var measurement: Measurement
    
    init(height: Double, name: String, measurement: Measurement) {
        self.height         = height
        self.name           = name
        self.measurement    = measurement
    }
    
    func play(){
        print("\(name) is playing")
    }
    
}

var measurement1 = Measurement(height:180, weight: 70)
let person1 = Person(height: 1.9, name:"WILL", measurement: measurement1)
person1.play()


