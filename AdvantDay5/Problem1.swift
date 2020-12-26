//
//  Problem1.swift
//  AdvantDay5
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

struct Problem1 {
    /* 7 Char(FB):- FBFBBFF :- 128 rows
     *
     * F - 0
     * B - 1
     
     * L - 0
     * R - 1
     *
     */
    // FF BF FB B LRL
    func solvePartOne(for processedArray: [String]) -> Int {
        var highestSeatID = 0
        for eachElement in processedArray {
            let bitSetForFirstSeven = getFirstSevenBitSet(for: eachElement)
            let bitSetForLastThree = getThreeBitSet(for: eachElement)
            
            guard let binaryPartOne = Int(bitSetForFirstSeven, radix: 2) else {
                return 0
            }
            guard let binaryPartTwo = Int(bitSetForLastThree, radix: 2) else {
                return 0
            }
            
            let seatId = binaryPartOne * 8 + binaryPartTwo
            
            if highestSeatID < seatId {
                highestSeatID = seatId
            }
        }
        return highestSeatID
    }
}

extension Problem1 {
    // MARK: - Helper
     func getFirstSevenBitSet(for element: String) -> String {
        guard element.count > 9 else {
            return ""
        }
        var bitSet = ""
        
        let firstIndex =  element.startIndex
        let seventhIndex = element.index(firstIndex, offsetBy: 6)
        
        let firstSeven = element[firstIndex...seventhIndex]
        
        for eachChar in firstSeven {
            if eachChar == "F" {
                bitSet.append("0")
            }else {
                bitSet.append("1")
            }
        }
        return bitSet
    }

     func getThreeBitSet(for element: String) -> String {
        guard element.count > 9 else {
            return ""
        }
        
        var bitSet = ""
        
        let firstIndex =  element.startIndex
        let seventIndex = element.index(firstIndex, offsetBy: 7)
        let lastIndex = element.index(seventIndex, offsetBy: 2)
        
        let lastThree = element[seventIndex...lastIndex]
        
        for eachChar in lastThree {
            if eachChar == "L" {
                bitSet.append("0")
            }else {
                bitSet.append("1")
            }
        }
        return bitSet
    }

}
