//
//  Problem1+Extension.swift
//  AdvantDay6
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

extension Problem1 {
    func solvePartTwo(having dataSource: [String]) -> Int {
        var summation = 0
        
        dataSource.forEach { component in
            summation += findIntersectionCount(in: component)
        }
        
        return summation
    }
    
    func findIntersectionCount(in input: String) -> Int {
        let components = input.components(separatedBy: .newlines)
        
        guard let stringFirstComponent = components.first else {
            return 0
        }
    
        var interSection = Set<Character>()
        stringFirstComponent.forEach{ interSection.insert($0)}
        
        for eachComponent in components {
            var uniquesCharacters = Set<Character>()
            eachComponent.forEach{ uniquesCharacters.insert($0) }
            interSection = uniquesCharacters.intersection(interSection)
        }
        
        return interSection.count
    }
    
    
}
