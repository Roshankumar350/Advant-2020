# AdvantDay1
Advant Day 1 solution.

- Problem Statement:- <br />
https://adventofcode.com/2020/day/1

## Functional
- [x]  Solution for Part 1
- [x]  Solution for Part 2

# AdvantDay2
Advant Day 2 solution.

- Problem Statement:- <br />
https://adventofcode.com/2020/day/2

## Functional
- [x]  Solution for Part 1
- [x]  Solution for Part 2

# AdvantDay4
Advant Day 4 solution by considering design.

- Problem Statement:- <br />
https://adventofcode.com/2020/day/4

## Functional
- [x]  Solution for Part 1
- [x]  Solution for Part 2

## Non Functional
-  Protocol with default implementation ( Has - A Relationship with struct `Problem1` )

-  Retroactive modeling for  <br />
1. Collection's API : <br />
  a. `func getPassportFieldInHashTable() throws  -> [PassportField: String] where Self.Element == String`
  
2. String's API:- <br />
  a.` func getStringComponent(for givenCharacterSet: CharacterSet) -> [String]` <br />
  b. `func getInteger()-> Int?` <br />
  
-  Enum `PassportField` for type-safty better than String 

` enum PassportField: String, CaseIterable {
     case byr
     case iyr
     case eyr
     case hgt
     case hcl
     case ecl
     case pid
     case cid
     case none
 }`
 
-  API documentation for locally reason about code. 

-  Error Handling 



# AdvantDay5
Advant Day 5 solution

- Problem Statement:- <br />
https://adventofcode.com/2020/day/5

## Functional
- [x]  Solution for Part 1
- [x]  Solution for Part 2

# AdvantDay6
Advant Day 6 solution

- Problem Statement:- <br />
https://adventofcode.com/2020/day/6

## Functional
- [x]  Solution for Part 1
- [x]  Solution for Part 2

