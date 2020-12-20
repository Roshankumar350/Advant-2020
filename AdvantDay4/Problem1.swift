//
//  Problem1.swift
//  AdvantDay4
//
//  Created by Roshan sah on 19/12/20.
//

import Foundation

struct Problem1: Matachable {
    func solvePartOne(having dataSource: [String]) -> Int {
        
        var numberOfValidPassport = 0
        var numberOfInvalidPassport = 0
        
        dataSource.forEach  { eachInputString in
            // Get the component string
            let firstInputComponentString = eachInputString.getStringComponent(for: .whitespacesAndNewlines)
            
            // Building hash table and get the keys
            let hashTable = firstInputComponentString.getPassportFieldInHashTable()
            let inputFieldsKeys = Array(hashTable.keys)
            
            // Get the required Field
            let requiredField = PassportField.requiredField
            
            if isEachFieldMatches(of: requiredField, in: inputFieldsKeys) {
                numberOfValidPassport += 1
            } else {
                numberOfInvalidPassport += 1
            }
        }
        
        //    debugPrint("Total number of passport is \(numberOfValidPassport + numberOfInvalidPassport)")
        //    debugPrint("Total number of valid passport is \(numberOfValidPassport)")
        //    debugPrint("Total number of inValid passport is \(numberOfInvalidPassport)")
        
        return numberOfValidPassport
    }
}

