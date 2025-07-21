import Foundation

let possibleNumbers = ["1", "2", "three", "///4///", "5"]


let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
// [1, 2, nil, nil, 5]


let compactMapped = possibleNumbers.compactMap { $0 }