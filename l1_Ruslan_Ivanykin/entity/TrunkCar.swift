//
//  TrunkCar.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 16.05.2021.
//

import Foundation

class TrunkCar: Car{
    var capacity: Double
    var maxCapacity: Double
    
    var model: String
    var issue: UInt
    var isStarting: Bool
    var isOpenWindows: Bool
    init(model: String, issue: UInt, isStarting: Bool, isOpenWindows: Bool, capacity: Double, maxCapacity: Double) {
        self.capacity = capacity
        self.maxCapacity = maxCapacity
        
        self.model = model
        self.issue = issue
        self.isStarting = isStarting
        self.isOpenWindows = isOpenWindows
    }
    
    func doAction(action: CarActions) {
        switch action {
        case let .loadTrunk(size):
            self.capacity += size
        case let .unloadTrunk(size):
            self.capacity -= size
        default:
            break
        }
    }
    
}

extension TrunkCar: CustomStringConvertible{
    var description: String{
        return "Model: \(self.model), Issue: \(self.issue), State engine: \(self.isStarting), State windows: \(self.isOpenWindows), Load now: \(self.capacity), Max load: \(self.maxCapacity)"
    }
}
