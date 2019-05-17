//
//  SelfDrivingCar.swift
//  classesAndObjects
//
//  Created by Elizabeth Dielentheis on 5/17/19.
//  Copyright © 2019 Elizabeth Dielentheis. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    var destination = "1263 Oak Street"
    
    override func drive() {
        super.drive()
        
        print("i'll take care of it sweetie")
    }
}
