//
//  Car.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 28.05.2021.
//

import Foundation

class Car{
    let model: String
    let issue: UInt
    var isStarting: Bool
    var isOpenWindows: Bool
    
    init(model: String, issue: UInt, isStarting: Bool, isOpenWindows: Bool) {
        self.model = model
        self.isStarting = isStarting
        self.issue = issue
        self.isOpenWindows = isOpenWindows
    }
    
    func doAction(action: CarActions){
        switch action {
        case .startEngine:
            isStarting = true
        case .stopEngine:
            isStarting = false
        case .openWindow:
            isOpenWindows = true
        case .closeWindow:
            isOpenWindows = false
        default:
            break
        }
    }
}
