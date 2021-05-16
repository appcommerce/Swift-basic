//
//  main.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 01.05.2021.
//

import Foundation


var lamborghini = SportCar(model: "Aventador", issue: 2000, capacity: 12.0, isStarting: false, isOpenWindows: false, maxCapacity: 12.0)
var audi = SportCar(model: "R8", issue: 2018, capacity: 12.0, isStarting: false, isOpenWindows: false, maxCapacity: 14.0)
var freightliner = TrunkCar(model: "eM2", issue: 2020, capacity: 0.0, isStarting: false, isOpenWindows: false, maxCapacity: 33_000.0)

print(lamborghini)
print(audi)
print(freightliner)

lamborghini.startContest(state: CarActions.startEngine)
audi.startContest(state: CarActions.openWindow)
freightliner.startContest(state: CarActions.loadTrunk(20_000.0))
freightliner.startContest(state: CarActions.startEngine)
freightliner.startContest(state: CarActions.unloadTrunk(34_000.0))
