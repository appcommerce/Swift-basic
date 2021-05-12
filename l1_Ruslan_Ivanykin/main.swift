//
//  main.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 01.05.2021.
//

import Foundation


/*
 * Задание 1. Урок 2
 */
func getEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}
print(getEvenNumber(5))

/*
 * Задание 2. Урок 2
 */
func getRightDivForThree(_ number: Int) -> Bool {
    return number % 3 == 0
}
print(getRightDivForThree(3))

/*
 * Задание 3. Урок 2
 */
var classicArray: [Int] = []
//Заполняем массив
func fillClassicArray(_ array: inout [Int]){
    for i in 1...100 {
        array.append(i)
    }
}
fillClassicArray(&classicArray)
print(classicArray)

/*
 * Задание 4. Урок 2
 */
//Убираем из массива все лишние числа.
func deleteExcessNumbersFromArray(_ array: inout [Int]){
    for i in array {
        if let index = array.firstIndex(of: i) {
            if getEvenNumber(i) || getRightDivForThree(i) {
                array.remove(at: index)
            }
        }
    }
}
deleteExcessNumbersFromArray(&classicArray)
print(classicArray)

//Задание 5. Урок 2
var febArray: [Int] = [1, 1]
func createFebArray(_ array: inout [Int]){
    for i in 2...50 {
        if i >= 2 {
            let feb = array[i-2] + array[i-1]
            array.append(feb)
        }
    }
}
createFebArray(&febArray)
print(febArray)
