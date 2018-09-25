import UIKit

class Vehicle {
    var on: Bool = false
    
    func startEngine() {
        on = true
    }
    
    func stopEngine() {
        on = false
    }
    
    func isOn() -> Bool {
        return on
    }
}

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    
}

class Bike: Vehicle {
    var driver: Person
    var type: bikeType
    var id: Int = 1234
    
    enum bikeType {
        case duke, tourism, supermotard
    }
    
    init(driver: Person, type: bikeType) {
        self.driver = driver
        self.type = type
    }
    
    func printInfo() {
        print("Licence info: \(self.licence)")
    }
    
    func getStatus() {
        if isOn() {
            print("\(driver.name) is driving a \(type).")
        } else {
            print("\(driver.name) is waiting to start his ride.")
        }
    }
}

protocol licenceNumberProtocol {
    var licence: String { get }
}

extension Bike: licenceNumberProtocol {
    var licence: String {
        return "COL\(self.id)"
    }
}

var edy = Person(name: "Edymerchk")
var ktm = Bike(driver: edy, type: Bike.bikeType.duke)
ktm.startEngine()
ktm.getStatus()
ktm.stopEngine()
ktm.getStatus()
ktm.printInfo()
