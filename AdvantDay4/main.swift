//
//  main.swift
//  AdvantDay4
//
//  Created by Roshan sah on 18/12/20.
//

import Foundation

let processedArray = dataSource.components(separatedBy: "\n\n")

print("Solution of Part 1 is \(Problem1().solvePartOne(having: processedArray))")

print("Solution of Part 2 is \(Problem1().solvePartTwo(having: processedArray))")
