//
//  String+Extension.swift
//  AdvantDay4
//
//  Created by Roshan sah on 19/12/20.
//

import Foundation

extension String {
    /// Use this method to split string based on  selected `CharacterSet`
    /// - Parameter givenCharacterSet: Is a `CharacterSet`.
    /// - Returns: Array of  String.
    func getStringComponent(for givenCharacterSet: CharacterSet) -> [String] {
        self.components(separatedBy: givenCharacterSet)
    }
    
    /// Use this method to get the `Int`  from `String`
    /// - Returns: Optional Int
    func getInteger()-> Int? {
        return Int(self)
    }
    
}
