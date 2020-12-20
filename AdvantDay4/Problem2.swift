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
            if isEachRequiredFieldValid(requiredField, hashTable) {
                numberOfValidPassport += 1
            } else {
                numberOfInvalidPassport += 1
            }
        } else {
            numberOfInvalidPassport += 1
        }
    }

//    debugPrint("Total number of passport is \(numberOfValidPassport + numberOfInvalidPassport)")
//    debugPrint("Total number of valid passport is \(numberOfValidPassport)")
//    debugPrint("Total number of inValid passport is \(numberOfInvalidPassport)")
    
    return numberOfValidPassport
}

fileprivate func isEachRequiredFieldValid(_ requiredField: [PassportField], _ hashTable: [PassportField : String]) -> Bool {
    var isValidPass = true
    for eachRequiredField in requiredField {
        
        let value = hashTable[eachRequiredField]
        
        switch eachRequiredField {
        case .byr:
            if !eachRequiredField.isValidByr(value) {
                isValidPass = false
                break
            }
        case .iyr:
            if !eachRequiredField.isValidIyr(value) {
                isValidPass = false
                break
            }
        case .eyr:
            if !eachRequiredField.isValidEyr(value) {
                isValidPass = false
                break
            }
        case .hgt:
            if !eachRequiredField.isValidHgt(value) {
                isValidPass = false
                break
            }
        case .hcl:
            if !eachRequiredField.isValidHcl(value) {
                isValidPass = false
                break
            }
        case .ecl:
            if !eachRequiredField.isValidEcl(value) {
                isValidPass = false
                break
            }
        case .pid:
            if !eachRequiredField.isValidPid(value) {
                isValidPass = false
                break
            }
        case .cid:
            continue
        case .none:
            continue
        }
        
        if !isValidPass {
            break
        }
        
    }
    
    return isValidPass
}


/// This will validate whether each field in `requiredFields`  is present in `givenFields`
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
