//
//  TrunkCar.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 16.05.2021.
//

import Foundation

class TrunkCar: Car, CustomStringConvertible{
    var capacity: Double
    var maxCapacity: Double
    
    init(model: String, issue: UInt, isStarting: Bool, isOpenWindows: Bool, capacity: Double, maxCapacity: Double) {
        self.capacity = capacity
        self.maxCapacity = maxCapacity
        super.init(model: model, issue: issue, isStarting: isStarting, isOpenWindows: isOpenWindows)
    }
    
    override func doAction(action: CarActions) {
        super.doAction(action: action)
        switch action {
        case let .loadTrunk(size):
            self.capacity += size
        case let .unloadTrunk(size):
            self.capacity -= size
        default:
            break
        }
    }
    
    var description: String{
        return "Model: \(self.model), Issue: \(self.issue), State engine: \(self.isStarting), State windows: \(self.isOpenWindows), Load now: \(self.capacity), Max load: \(self.maxCapacity)"
    }
}
