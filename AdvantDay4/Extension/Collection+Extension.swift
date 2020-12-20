//
//  Collection+Extension.swift
//  AdvantDay4
//
//  Created by Roshan sah on 19/12/20.
//

import Foundation

enum PassportFieldError: LocalizedError {
    case field_Count_Is_Not_Equal_to_2
}

extension Collection {
    
    /// Use this method to get the Dictionary for given pattern `"xyz:pqr"`
    /// - Returns: Dictionary of Passport field and Associated Value `[PassportField: String]`
    func getPassportFieldInHashTable() throws  -> [PassportField: String] where Self.Element == String {
        var hashTable: [PassportField: String] = [:]
        try self.forEach { element in
            let keyValuePair = element.components(separatedBy: ":")
            
            guard keyValuePair.count == 2 else {
                throw PassportFieldError.field_Count_Is_Not_Equal_to_2
            }
            
            let key: PassportField = PassportField.init(rawValue: keyValuePair.first ?? "") ?? .none
            let value = keyValuePair.last ?? ""
            hashTable[key] = value
        }
        
        return hashTable
    }
}
