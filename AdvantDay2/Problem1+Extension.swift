//
//  Problem1+Extension.swift
//  AdvantDay2
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

extension Problem1 {
    func isvalidPasswordPolicyPartTwo(_ password: String) -> Bool {
        // Output
        var isValidPasswordPolicy = false
        
        // Get the component of each password policy
        let components = password.components(separatedBy: CharacterSet.whitespaces)

        // From 1st component  get the lower and upper bound
        let first = components[0].components(separatedBy: "-")
        guard var lowerBound = Int(first.first ?? "0") else { return isValidPasswordPolicy }
        // Since we need to match the index
        lowerBound -= 1
        guard var upperBound = Int(first.last ?? "0") else { return isValidPasswordPolicy }
       // Since we need to match the index
        upperBound -= 1
        
        // From 2nd component get the character upon which policy can be applied
        let second = components[1].first
        // From 3rd Component get the entire string
        let third = components[2]
        
        // Store the numberOfmatch count
        var numberOfmatch = 0
        
        // Check if there is match
        for (eachIndex, eachChar) in third.enumerated() {
            if (eachIndex == lowerBound && eachChar == second) || (eachIndex == upperBound && eachChar == second) {
                numberOfmatch += 1
            }
        }
        
        // check if count lies in between
        if numberOfmatch == 1 {
            isValidPasswordPolicy = true
        }
        
        // return it
        return isValidPasswordPolicy
    }
}
