//
//  Passport+Behaviour.swift
//  AdvantDay4
//
//  Created by Roshan sah on 20/12/20.
//

import Foundation

extension PassportField {
    
    /// This will validate Birth Year based on policy of `Constant.birthYear`
    /// - Parameter byr: Birth Year  having type `String?`
    /// - Returns: Boolean to determine whether Birth Year is valid.
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
    
    /// This will validate Year of Issue  based on policy of `Constant.yearOfIssue`
    /// - Parameter iyr: Year of issue  having type `String?`
    /// - Returns: Boolean to determine whether Year of issue is valid.
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

    /// This will validate Year of expiration  based on policy of `Constant.expirationYear`
    /// - Parameter eyr: Year of expiration  type `String?`
    /// - Returns: Boolean to determine whether Year of expiration is valid.
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
    
    /// This will validate Height  based on policy of `Constant.heightInCM` or ``Constant.heightInIn`
    /// - Parameter Hgt: Height having  type `String?`
    /// - Returns: Boolean to determine whether Height is valid.
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
    
    /// This will validate Hair Color  based on policy of `Constant.regexForHCL`
    /// - Parameter hcl: Hair Color having  type `String?`
    /// - Returns: Boolean to determine whether Hair Color is valid.
    func isValidHcl(_ hcl: String?)-> Bool {
        var _isValidHcl = false
        guard let hairColor = hcl else {
            return _isValidHcl
        }
        
        let regex = try! NSRegularExpression(pattern: Constant.regexForHCL)
        _isValidHcl = regex.matches(in: hairColor, range:  NSRange(location: 0, length: hairColor.utf16.count)).count == 1
        
        return _isValidHcl
    }
    
    /// This will Eye Color  based on policy of `Constant.eyeColor`
    /// - Parameter ecl: Eye Color having  type `String?`
    /// - Returns: Boolean to determine whether Eye Color is valid.
    func isValidEcl(_ ecl: String?)-> Bool {
        var _isValidEcl = false
        
        guard let eyeColor = ecl else {
            return _isValidEcl
        }
        _isValidEcl = Constant.eyeColor.contains(eyeColor)
        
        return _isValidEcl
    }
    
    /// This will validate Passport ID  based on policy of `Count == 9 and Type is Integer`
    /// - Parameter pid: Height having  type `String?`
    /// - Returns: Boolean to determine whether Passport ID is Valid.
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
