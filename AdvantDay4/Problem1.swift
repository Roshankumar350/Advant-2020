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
        
        dataSource.forEach  { input in
            // Get the component string
            let firstInputComponentString = input.getStringComponent(for: .whitespacesAndNewlines)
            
            // Building hash table and get the keys
            guard let hashTable = try? firstInputComponentString.getPassportFieldInHashTable() else { return }
            let inputFieldsKeys = Array(hashTable.keys)
            
            // Get the required Field
            let requiredField = PassportField.requiredField
            
            if isEachFieldMatches(of: requiredField, in: inputFieldsKeys) {
                self.incrementByOne(counterNumber: &numberOfValidPassport)
            } else {
                self.incrementByOne(counterNumber: &numberOfInvalidPassport)
            }
        }
        
        return numberOfValidPassport
    }
}

extension Problem1 {
    func incrementByOne(counterNumber number: inout Int) {
        number += 1
    }
}
