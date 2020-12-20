//
//  Matchable.swift
//  AdvantDay4
//
//  Created by Roshan sah on 20/12/20.
//

import Foundation

protocol Matachable {
    /// This will validate whether each field in `requiredFields`  is present in `givenFields`
    /// - Parameters:
    ///   - requiredFields: Are fields which are required to Validate a passport. Type is `PassportField`
    ///   - givenFields: Are fields which are in PassportField. Type is `PassportField`
    /// - Returns:Which will determine whether every requiredFields are present in givenFields
    func isEachFieldMatches(of requiredFields: [PassportField], in givenFields: [PassportField]) -> Bool
}

extension Matachable {
    func isEachFieldMatches(of requiredFields: [PassportField], in givenFields: [PassportField]) -> Bool {
        // Output
        var isEachFieldMatches = true
        
        // Check if each required field is present in given field else exit
        for eachRequiredField in requiredFields where !givenFields.contains(eachRequiredField) {
            isEachFieldMatches = false
            break
        }
        
        return isEachFieldMatches
    }
    
    
}
