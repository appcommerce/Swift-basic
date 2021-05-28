//
//  main.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 01.05.2021.
//

import Foundation

let sportCar = SportCar(model: "Ferrari", issue: 1998, isStarting: false, isOpenWindows: false, isCheepingEngine: false, soundSystem: "Old")

let trunkCar = TrunkCar(model: "Kamaz", issue: 2008, isStarting: false, isOpenWindows: false, capacity: 5_000.0, maxCapacity: 12_000.0)

sportCar.doAction(action: CarActions.startEngine)
print(sportCar)
sportCar.doAction(action: CarActions.swapEngine)
print(sportCar)
sportCar.doAction(action: CarActions.soundSystem(CarActions.SoundSystems.dinamyc))
print(sportCar)

trunkCar.doAction(action: CarActions.startEngine)
print(trunkCar)
trunkCar.doAction(action: CarActions.loadTrunk(1236.45))
print(trunkCar)
trunkCar.doAction(action: CarActions.unloadTrunk(1236.45))
print(trunkCar)

