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
    private struct Constant {
        static let birthYear = (1920...2002)
        static let yearOfIssue = (2010...2020)
        static let expirationYear = (2020...2030)
        static let heightInCM = (150...193)
        static let heightInIn = (59...76)
        static let regexForHCL = "#[0-9a-f]{6}"
        static let eyeColor = ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"]
    }
    
}

extension PassportField {
    /// These are minimal required field must match to make valid passport
    static var requiredField: [PassportField] {
        let requiredFields: [PassportField] = [.byr, .iyr, .eyr, .hgt, .hcl, .ecl, .pid]
        return requiredFields
    }
}

extension PassportField {
    
    func isValidByr(_ byr: String?)-> Bool {
        var _isValidByr = false
        
        guard let birthYear = byr else {
            return _isValidByr
        }
        
        guard let number = birthYear.getInteger() else {
            return _isValidByr
        }
        
        if Constant.birthYear.contains(number) {
            _isValidByr.toggle()
        }
        
        return _isValidByr
    }
    
    func isValidIyr(_ iyr: String?)-> Bool {
        var _isValidIyr = false
        
        guard let issueYear = iyr else {
            return _isValidIyr
        }
        
        guard let number = issueYear.getInteger() else {
            return _isValidIyr
        }
        
        if Constant.yearOfIssue.contains(number) {
            _isValidIyr.toggle()
        }
        
        return _isValidIyr
    }

    func isValidEyr(_ eyr: String?)-> Bool {
        var _isValidEyr = false
        
        guard let expirationYear = eyr else {
            return _isValidEyr
        }
        
        guard let number = expirationYear.getInteger() else {
            return _isValidEyr
        }
        
        if Constant.expirationYear.contains(number) {
            _isValidEyr.toggle()
        }
        
        return _isValidEyr
    }
    
    func isValidHgt(_ hgt: String?)-> Bool {
        var _isValidHgt = false
        
        guard let height = hgt else {
            return _isValidHgt
        }
        
        if height.hasSuffix("cm") {
            let _height = String(height.dropLast(2))
            
            guard let number = _height.getInteger() else {
                return _isValidHgt
            }
            
            if Constant.heightInCM.contains(number) {
                _isValidHgt.toggle()
            }
            
        } else if height.hasSuffix("in") {
            let _height = String(height.dropLast(2))
            
            guard let number = _height.getInteger() else {
                return _isValidHgt
            }
            
            if Constant.heightInIn.contains(number) {
                _isValidHgt.toggle()
            }
            
        }
        
        return _isValidHgt
    }
    
    func isValidHcl(_ hcl: String?)-> Bool {
        var _isValidHcl = false
        guard let hairColor = hcl else {
            return _isValidHcl
        }
        
        let regex = try! NSRegularExpression(pattern: Constant.regexForHCL)
        _isValidHcl = regex.matches(in: hairColor, range:  NSRange(location: 0, length: hairColor.utf16.count)).count == 1
        
        return _isValidHcl
    }
    
    func isValidEcl(_ ecl: String?)-> Bool {
        var _isValidEcl = false
        
        guard let eyeColor = ecl else {
            return _isValidEcl
        }
        _isValidEcl = Constant.eyeColor.contains(eyeColor)
        
        return _isValidEcl
    }
    
    func isValidPid(_ pid: String?)-> Bool {
        var _isValidPid = false
        
        guard let passportID = pid else {
            return _isValidPid
        }
        
        guard passportID.count == 9 else {
            return _isValidPid
        }
        
        guard let _ = passportID.getInteger() else {
            return _isValidPid
        }
        
        _isValidPid.toggle()
        
        return _isValidPid
    }
}
