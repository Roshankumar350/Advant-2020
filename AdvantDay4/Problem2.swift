//
//  Problem2.swift
//  AdvantDay4
//
//  Created by Roshan sah on 19/12/20.
//

import Foundation

func solvePartTwo(having dataSource: [String]) -> Int {
    
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

    debugPrint("Total number of passport is \(numberOfValidPassport + numberOfInvalidPassport)")
    debugPrint("Total number of valid passport is \(numberOfValidPassport)")
    debugPrint("Total number of inValid passport is \(numberOfInvalidPassport)")
    
    return numberOfValidPassport
}


/// This will validate whether each required field is present in given field
/// - Parameters:
///   - requiredFields: Are fields which are required to Validate a passport. Type is `PassportField`
///   - givenFields: Are fields which are in PassportField. Type is `PassportField`
/// - Returns:Which will determine whether every requiredFields are present in givenFields
fileprivate func isEachFieldMatches(of requiredFields: [PassportField], in givenFields: [PassportField]) -> Bool {
    // Output
    var isEachFieldMatches = true
    
    // Check if each required field is present in given field else exit
    for eachRequiredField in requiredFields where !givenFields.contains(eachRequiredField) {
        isEachFieldMatches = false
        break
    }
    
    return isEachFieldMatches
}
