//
//  Problem1.swift
//  AdvantDay2
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

struct Problem1 {
    func isvalidPasswordPolicy(_ password: String) -> Bool {
        // Output
        var isValidPasswordPolicy = false
        
        // Get the component of each password policy
        let components = password.components(separatedBy: CharacterSet.whitespaces)

        // From 1st component  get the lower and upper bound
        let first = components[0].components(separatedBy: "-")
        guard let lowerBound = Int(first.first ?? "0") else { return isValidPasswordPolicy }
        guard let upperBound = Int(first.last ?? "0") else { return isValidPasswordPolicy }
        
        // From 2nd component get the character upon which policy can be applied
        let second = components[1].first
        // From 3rd Component get the entire string
        let third = components[2]
        
        // Store the character count
        var countOfChar = 0
        
        // Check if there is match
        for eachChar in third {
            if eachChar == second {
                countOfChar += 1
            }
        }
        
        // check if count lies in between or including lower or upper bound
        if countOfChar >= lowerBound && countOfChar <= upperBound {
            isValidPasswordPolicy = true
        }
        
        // return it
        return isValidPasswordPolicy
    }
}
