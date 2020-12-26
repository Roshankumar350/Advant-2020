//
//  Problem1+Extension.swift
//  AdvantDay5
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

extension Problem1 {
    func solvePartTwo(for processedArray: [String]) -> Int {
        var seatIds = [Int]()
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
            
            seatIds.append(seatId)
        }
        
        seatIds.sort(by: <)
        
        return findMissingNumber(in: seatIds)
    }
    
    func findMissingNumber(in inputArray: [Int]) -> Int {
        let allSeats = Set(inputArray.first!...inputArray.last!)
        
        let desiredIds = allSeats.symmetricDifference(inputArray)
        
        return desiredIds.first ?? 0
    }
}
