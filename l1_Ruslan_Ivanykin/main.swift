//
//  main.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 01.05.2021.
//

import Foundation

var sportCar = SportCar(model: "Ferrari", issue: 1998, isStarting: false, isOpenWindows: false, isCheepingEngine: false, soundSystem: "Old")

var trunkCar = TrunkCar(model: "Kamaz", issue: 2008, isStarting: false, isOpenWindows: false, capacity: 5_000.0, maxCapacity: 12_000.0)

sportCar.startEngine()
print(sportCar.description)
sportCar.stopEngine()
print(sportCar.description)
sportCar.doAction(action: CarActions.swapEngine)
print(sportCar.description)
sportCar.doAction(action: CarActions.soundSystem(CarActions.SoundSystems.dinamyc))
print(sportCar.description)

trunkCar.startEngine()
print(trunkCar.description)
trunkCar.stopEngine()
print(trunkCar.description)
trunkCar.doAction(action: CarActions.loadTrunk(1236.45))
print(trunkCar.description)
trunkCar.doAction(action: CarActions.unloadTrunk(1236.45))
print(trunkCar.description)

