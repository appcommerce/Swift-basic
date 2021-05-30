//
//  main.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 01.05.2021.
//

import Foundation

var myQueue = SwiftQueue<Int>()
myQueue.add(item: 1)
myQueue.add(item: 2)
myQueue.add(item: 3)
myQueue.add(item: 4)

myQueue.items.forEach{ element in
    print(element)
}

print(myQueue.poll())

print(myQueue[0])
myQueue[0] = 1
print(myQueue[0])

let filteredArray = myQueue.filteredByDelimiter(){ delimiter in
    return delimiter % 2 == 0
}
print(filteredArray)
