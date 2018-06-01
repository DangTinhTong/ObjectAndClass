//: Playground - noun: a place where people can play
// Tống Đăng Tình

import UIKit

//var str = "Hello, playground"
// Use class followed by the class's name to create a class

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides."
    }
}
// Create an instance of a class by putting parentheses after the class name
// Use dot syntax to access the properties and method of the instance
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
// THis version of the Shape class is missing something important: an initializer to set up the class when an instance is created. Use init to create one
class NamedShape {
    var numberOfSides: Int = 0
    var name:  String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
        
    }
}

// Notice how self is used to distinguish the name property from the naem argument to the initializer. The argumnets to the initializer are passed like a function call when  you create an instance of the class.

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
    
}

let test = Square(sideLength: 5.2, name: "My test square")
test.area()
test.simpleDescription()

// In addition to simple properties that are stored, properties can have a getter and a setter
class EquilateralTriangle:  NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
    
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


/*class TriangleAndSquare {
    var trianle: EquilateralTriangle {
        willSet {
            square.sideLenght = newValue.sideLength
            
        }}
        var square: Square{
        willSet {
        triangle.sideLength = newValue.sideLength
        }
        }
        
    }
    init(side: Double, name: String) {
        square = Square(sideLenght)
    }
}*/
