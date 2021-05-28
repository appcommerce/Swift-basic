//
//  SportCar.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 16.05.2021.
//

import Foundation

class SportCar: Car{
    var isCheepingEngine: Bool
    var soundSystem: String
    
    var model: String
    var issue: UInt
    var isStarting: Bool
    var isOpenWindows: Bool
    init(model: String, issue: UInt, isStarting: Bool, isOpenWindows: Bool, isCheepingEngine: Bool, soundSystem: String) {
        self.model = model
        self.issue = issue
        self.isStarting = isStarting
        self.isOpenWindows = isOpenWindows
        
        self.isCheepingEngine = isCheepingEngine
        self.soundSystem = soundSystem
    }
    
    func doAction(action: CarActions) {
        switch action {
        case .swapEngine:
            isCheepingEngine = true
        case let .soundSystem(sub):
            self.soundSystem = sub.rawValue
        default:
            break
        }
    }
}
extension SportCar: CustomStringConvertible{
    var description: String{
        return "Model: \(self.model), Issue: \(self.issue), State engine: \(self.isStarting), State windows: \(self.isOpenWindows), Sound system: \(self.soundSystem), Cheep tuning: \(self.isCheepingEngine)"
    }
}
