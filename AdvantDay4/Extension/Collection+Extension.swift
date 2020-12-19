//
//  Collection+Extension.swift
//  AdvantDay4
//
//  Created by Roshan sah on 19/12/20.
//

import Foundation

extension Collection {
    
    /// Use this method to get the Dictionary for given pattern
    /// - Returns: Dictionary of Passport field and Associated Value
    func getPassportFieldInHashTable() -> [PassportField: String] where Self.Element == String {
        var hashTable: [PassportField: String] = [:]
        self.forEach { element in
            let keyValuePair = element.components(separatedBy: ":")
            let key: PassportField = PassportField.init(rawValue: keyValuePair.first ?? "") ?? .none
            let value = keyValuePair.last ?? ""
            hashTable[key] = value
        }
        
        return hashTable
    }
}
