//
//  SwiftQueue.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 29.05.2021.
//

import Foundation

class SwiftQueue<T>{
    var items: [T] = []
    
    func add(item: T){
        items.append(item)
    }
    
    func poll() -> T{
        return items.removeFirst()
    }
    func filteredByDelimiter(_ delimiter: (T)->Bool) -> [T]{
        var temp = [T]()
        for element in items{
            if delimiter(element) {
                temp.append(element)
            }
        }
        return temp
    }
    subscript(_ index: Int) -> T{
        get{
            return items[index]
        }
        set(newValue){
           items[index] = newValue
        }
    }
}
