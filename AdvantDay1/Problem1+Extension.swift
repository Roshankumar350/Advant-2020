//
//  Problem1+Extension.swift
//  AdvantDay1
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

extension Problem1 {
    
    func findThreeIndexOf(targetSum sum: Int, in inputArray: [Int]) -> (Int,Int,Int) {
        // Output Indices
        var indices: (Int,Int,Int) = (-1, -1, -1)
        
        for (index, value) in inputArray.enumerated() {
            let otherTwoSum = sum - value
            // hastable
            var hashTable = [Int:Int]()
            // enumerate it
            
            var hasGotOtherTwoSum = false
            for (index, value) in inputArray.enumerated() {
                // check if hastable has complementry value (i.e index)
                if let rightIndex = hashTable[value] {
                    indices.0 = index
                    indices.1 = rightIndex
                    hasGotOtherTwoSum.toggle()
                    break
                } else {
                    // set the key as 'compelementry value'  and value  as 'index'
                    hashTable[otherTwoSum-value] =  index
                }
                
            }
            if hasGotOtherTwoSum {
                indices.2 = index
                break
                
            }
        }
        return indices
    }
    
}
