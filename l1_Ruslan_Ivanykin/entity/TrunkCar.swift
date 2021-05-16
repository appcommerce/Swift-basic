//
//  TrunkCar.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 16.05.2021.
//

import Foundation

struct TrunkCar{
    let model: String
    let issue: UInt
    var capacity: Double
    var isStarting: Bool
    var isOpenWindows: Bool
    let maxCapacity: Double
    
    mutating func startContest(state: CarActions){
        switch state {
        case .startEngine:
            if !isStarting {
                isStarting = true
            }else{
                print("Engine is already started")
            }
        case .stopEngine:
            if isStarting {
                isStarting = false
            }else{
                print("Engine is already stopped")
            }
        case .openWindow:
            if !isOpenWindows {
                isOpenWindows = true
            }else{
                print("Windows are already opened")
            }
        case .closeWindow:
            if isOpenWindows {
                isOpenWindows = false
            }else{
                print("Windows are already closed")
            }
        case .loadTrunk(let count):
            if count <= maxCapacity && count > 0 {
                capacity = count
            }
            else{
                print("Bad count")
            }
        case .unloadTrunk(let count):
            if count <= capacity {
                capacity = count
            }
            else{
                print("Bad count")
            }
        }
    }
}
