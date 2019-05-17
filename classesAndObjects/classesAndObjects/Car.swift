//
//  Car.swift
//  classesAndObjects
//
//  Created by Elizabeth Dielentheis on 5/17/19.
//  Copyright © 2019 Elizabeth Dielentheis. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Minivan
}

class Car {
    var color = "Black"
    var numberOfSeats = 5
    var carType : CarType = .Sedan
    
    init() {
        
    }
    
    convenience init(chosenColor : String) {
        self.init()
        color = chosenColor
    }
    
    func drive() {
        print("beep beep motherfuckers")
    }
}
