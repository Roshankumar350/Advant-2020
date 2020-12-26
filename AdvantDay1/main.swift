//
//  main.swift
//  AdvantDay1
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

let processedArray = dataSource.components(separatedBy: CharacterSet.newlines).compactMap{Int($0)}

let indices = Problem1().findIndexOf(targetSum: 2020, in: processedArray)
if indices.0 > 0 && indices.1 > 0 {
    print(processedArray[indices.0] * processedArray[indices.1])
}

let indicesForThree = Problem1().findThreeIndexOf(targetSum: 2020, in: processedArray)
if indicesForThree.0 > 0 && indicesForThree.1 > 0  && indicesForThree.2 > 0 {
    print(processedArray[indicesForThree.0] * processedArray[indicesForThree.1] * processedArray[indicesForThree.2] )
}
