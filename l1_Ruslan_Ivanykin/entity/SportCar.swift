//
//  SportCar.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 16.05.2021.
//

import Foundation

class SportCar: Car, CustomStringConvertible{
    var isCheepingEngine: Bool
    var soundSystem: String
    init(model: String, issue: UInt, isStarting: Bool, isOpenWindows: Bool, isCheepingEngine: Bool, soundSystem: String) {
        self.isCheepingEngine = isCheepingEngine
        self.soundSystem = soundSystem
        super.init(model: model, issue: issue, isStarting: isStarting, isOpenWindows: isOpenWindows)
    }
    
    override func doAction(action: CarActions) {
        super.doAction(action: action)
        switch action {
        case .swapEngine:
            isCheepingEngine = true
        case let .soundSystem(sub):
            self.soundSystem = sub.rawValue
        default:
            break
        }
    }
    
    var description: String{
        return "Model: \(self.model), Issue: \(self.issue), State engine: \(self.isStarting), State windows: \(self.isOpenWindows), Sound system: \(self.soundSystem), Cheep tuning: \(self.isCheepingEngine)"
    }
}
