//
//  Car.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 28.05.2021.
//

import Foundation

protocol Car{
    var model: String {get set}
    var issue: UInt {get set}
    var isStarting: Bool {get set}
    var isOpenWindows: Bool {get set}
    
    func doAction(action: CarActions)
}
extension Car{
    mutating func startEngine(){
        self.isStarting = true
    }
    mutating func stopEngine() {
        self.isStarting = false
    }
    mutating func openWindow(){
        self.isOpenWindows = true
    }
    mutating func closeWindow(){
        self.isOpenWindows = false
    }
}
