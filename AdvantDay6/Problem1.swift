//
//  Problem1.swift
//  AdvantDay6
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

struct Problem1 {
    func solvePartOne(having dataSource: [String]) -> Int {
        
        var summationOfCount = 0
        
        dataSource.forEach { component in
            let componentCount = getHashTableKeys(forString: component)
            summationOfCount += componentCount
        }
        
        return summationOfCount
        
    }
    
    func getHashTableKeys(forString input: String) -> Int {
        let flatString = input.replacingOccurrences(of: "\n", with: "")
        
        var hashTable = [Character: Int]()
        
        for eachChar in flatString {
            if let elementCount = hashTable[eachChar] {
                hashTable[eachChar]! += elementCount
            } else {
                hashTable[eachChar] = 1
            }
        }
        
        return hashTable.keys.count
        
        
    }
}
