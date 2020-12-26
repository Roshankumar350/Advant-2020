//
//  Problem1.swift
//  AdvantDay1
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

struct Problem1 {
    func findIndexOf(targetSum sum: Int, in inputArray: [Int]) -> (Int,Int) {
        // Output Indices
        var indices: (Int,Int) = (-1, -1)
        // hastable
        var hashTable = [Int:Int]()
        // enumerate it
        for (index, value) in inputArray.enumerated() {
            // check if hastable has complementry value (i.e index)
            if let rightIndex = hashTable[value] {
                indices.0 = index
                indices.1 = rightIndex
                break
            } else {
                // set the key as 'compelementry value'  and value  as 'index'
                hashTable[sum-value] =  index
            }
            
        }
        
        return indices
    }
}
