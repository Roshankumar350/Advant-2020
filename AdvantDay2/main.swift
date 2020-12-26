//
//  main.swift
//  AdvantDay2
//
//  Created by Roshan sah on 26/12/20.
//

import Foundation

let processedArray = dataSource.components(separatedBy: CharacterSet.newlines)

let validPasswordCount = processedArray.filter{ Problem1().isvalidPasswordPolicy($0) }.count
print("Solution of part 1 is \(validPasswordCount)")


