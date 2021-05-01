//
//  main.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 01.05.2021.
//

import Foundation

/*
 * Задание 1. Стандартными библиотеками можно пользоваться для степеней и корней?
 */
let a = -1.0
let b = 0.0
let c = 0.0
let d = pow(b, 2) - (4 * a * c)

print("Дискриминант \(d)")
if d < 0 {
    print("Уравнение не имеет корней")
}else if d > 0 {
    let x1 = (-b + sqrt(d))/(2*a)
    let x2 = (-b - sqrt(d))/(2*a)
    print("X1: \(x1)")
    print("X2: \(x2)")
}else if d == 0 && a != 0{
    let x = (-b)/(2*a)
    print("X: \(x)")
}else {
    print("a не может быть равно 0")
}

/*
 * Задание 2.
 */
let i: Double = 4 //Катет 1
let j: Double = 12 //Катет 2
let square: Double = 0.5*i*j
let h = sqrt(pow(i, 2)+pow(j, 2))
let p = i+j+h
print("Площадь \(square)")
print("Гипотенуза \(h)")
print("Периметр \(p)")

/*
 * Задание 3. Как-то так
 */
let sum:Double = 120_000
let percent: Double = 6
let roi = sum + (sum*(percent/100)*5)
print("Капитализация вашего счета через 5 лет составит: \(roi)")
