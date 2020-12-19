//
//  Passport.swift
//  AdvantDay4
//
//  Created by Roshan sah on 18/12/20.
//

import Foundation
/*
 byr (Birth Year)
 iyr (Issue Year)
 eyr (Expiration Year)
 hgt (Height)
 hcl (Hair Color)
 ecl (Eye Color)
 pid (Passport ID)
 cid (Country ID) // Optional
 */

/// Passport  Fields
enum PassportField: String, CaseIterable {
    case byr
    case iyr
    case eyr
    case hgt
    case hcl
    case ecl
    case pid
    case cid
    case none
}

extension PassportField {
    /// These are minimal required field must match to make valid passport
    static var requiredField: [PassportField] {
        let requiredFields: [PassportField] = [.byr, .iyr, .eyr, .hgt, .hcl, .ecl, .pid]
        return requiredFields
    }
}
