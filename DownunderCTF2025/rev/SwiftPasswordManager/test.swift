// // decompiled to actual swift code from IDA

// import Foundation

// extension String {
//     func h() -> UInt64 {
//         var offsetBasis32: UInt64 = 0x811C9DC5
//         var prime32: UInt64 = 0x1000193

//         for (index, byte) in self.utf8.enumerated() {
//             offsetBasis32 = UInt64(byte) ^ offsetBasis32.rotatedLeft(by: 7)
//             prime32 = 33 &* prime32 &+ UInt64(byte) &* UInt64(index + 1)
//         }

//         return offsetBasis32 ^ prime32.rotatedLeft(by: 32)
//     }
// }

// extension UInt64 {
//     fileprivate func rotatedLeft(by bits: UInt64) -> UInt64 {
//         return (self << bits) | (self >> (64 - bits))
//     }
// }

// func checkString(_ inputString: String) -> Bool {
//     // LOBYTE(v7) = _sSS9hasPrefixySbSSF(input_string);    
//     if !inputString.hasPrefix("UD") { return false }
//     // LOBYTE(v7) = _sSS9hasSuffixySbSSF(end_of_input_string);
//     if !inputString.hasSuffix("}. ") { return false }

//     let startIndex = inputString.startIndex
//     if inputString[inputString.index(startIndex, offsetBy: 2)] != "C" { return false }
//     if inputString[inputString.index(startIndex, offsetBy: 3)] != "T" { return false }
//     if inputString[inputString.index(startIndex, offsetBy: 4)] != "F" { return false }
//     if inputString[inputString.index(startIndex, offsetBy: 5)] != "{" { return false }

//     // after_DUCTF = specialized Collection.dropFirst(_:)(6LL, v5, v4);
//     let droppedString = String(inputString.dropFirst(6))
//     let targetIndex: String.Index
//     if droppedString.count >= 2 {
//         targetIndex = droppedString.index(droppedString.endIndex, offsetBy: -3)
//     } else {
//         targetIndex = droppedString.startIndex
//     }
//     let processedString = String(droppedString[..<targetIndex])
//     // if ( _sSS5countSivg(processedString, v67) != 29 )
//     if processedString.count != 29 { return false }
//     guard let lastCharOfProcessedString = processedString.last,
//             lastCharOfProcessedString == "." else {
//         return false
//     }

//     let firstHashResult = processedString.h()
//     let lower32 = UInt32(truncatingIfNeeded: firstHashResult)
//     if lower32 != 0xD890BAB5 { return false }

//     let reversedInputString = String(processedString.reversed())
//     let secondHashResult = reversedInputString.h()
//     if (secondHashResult >> 32) != 0x80DD5386 { return false }
    
//     // let tempReversedSubstringCollection = processedString.reversed()
//     processedString = String(processedString.reversed())
//     let processedChars = Array(processedString)
//     guard processedChars.count >= 28 else { return false }
//     guard processedChars[0] == "g" else { return false }
    
//     guard let asciiValueAt0 = processedChars[0].asciiValue, asciiValueAt0 == Character("g").asciiValue else {
//         return false
//     }

//     guard let asciiValueAt1 = processedChars[1].asciiValue,
//             asciiValueAt1 == Character("i").asciiValue else { return false }

//     guard let asciiValueAt2 = processedChars[2].asciiValue else { return false }
//     if (asciiValueAt2 + 111) != 159 { return false }

//     guard let asciiValueAt3 = processedChars[3].asciiValue else { return false }
//     if (asciiValueAt3 % 2) != 0 { return false }

//     let sumOfRelevantAsciiValues = asciiValueAt3 + asciiValueAt0
//     let computedAsciiValue = UInt8(sumOfRelevantAsciiValues / 2)
//     let finalCharFromSum = String(bytes: [computedAsciiValue], encoding: .utf8) ?? ""
//     if finalCharFromSum != "g" {
//         return false
//     }

//     guard let firstCharAscii = processedChars[0].asciiValue else { return false }
//     if firstCharAscii != Character("c").asciiValue { return false }

//     let someCompactMapResult = "g5"
//     if someCompactMapResult != "g5" { return false }

//     guard let charAt27 = processedChars[27].asciiValue else { return false }
//     if charAt27 != Character(".").asciiValue { return false }

//     let compactMappedIndices1To4Result: [UInt64] = []
//     let requiredStaticArray: [UInt64] = []
//     // if compactMappedIndices1To4Result != requiredStaticArray { return false }

//     guard let c14 = processedChars[14].asciiValue,
//             let c15 = processedChars[15].asciiValue,
//             let c24 = processedChars[24].asciiValue else { return false }

//     let iC14 = Int(c14)
//     let iC15 = Int(c15)
//     let iC24 = Int(c24)
//     if !(iC14 + 2 * iC15 + 3 * iC24 == 383 &&
//             4 * iC14 + 5 * iC15 + 6 * iC24 == 959 &&
//             9 * (iC14 + iC24) + 8 * iC15 == 1641) {
//         return false
//     }

//     // --- 13. NEW: Substrings transformed by `flatMap` must equal "_1p54_sh" ---
//     let combinedTransformedString = "_1p54_sh"
//     if combinedTransformedString != "_1p54_sh" { return false }

//     guard let charAt26 = processedChars[26].asciiValue else { return false }
//     if charAt26 != Character("d").asciiValue { return false }

//     // --- 15. NEW: Loop with complex character transformations ---
//     let resultFromComplexLoop = "e^1q"
//     if resultFromComplexLoop != "e^1q" { return false }

//     let c2 = processedChars[2].asciiValue!
//     guard let c6 = processedChars[6].asciiValue,
//             let c8 = processedChars[8].asciiValue else { return false }
    
//     let iC2 = Int(c2)
//     let iC6 = Int(c6)
//     let iC8 = Int(c8)
    
//     if !(iC2 + 2 * iC6 + 3 * iC8 == 552 &&
//             4 * iC2 + 5 * iC6 + 6 * iC8 == 1404 &&
//             6 * iC2 + 8 * iC6 + 9 * iC8 == 2145) {
//         return false
//     }

//     return true
// }

// var t = checkString("UDCTF{giohEcN,_5pYt65Wb%oOs6_x4Rd..}. ")
// print(t)

import Foundation // Keep your existing extensions for String.h() and UInt64.rotatedLeft()
import SwiftUI // Add SwiftUI for context

// Your custom hash function and UInt64 extension (from previous analysis)
extension String {
    func h() -> UInt64 {
        var offsetBasis32: UInt64 = 0x811C9DC5
        var prime32: UInt64 = 0x1000193

        for (index, byte) in self.utf8.enumerated() {
            // Note: Your original rotatedLeft was on offsetBasis32. This might be a detail to re-verify from raw decompilation if needed.
            offsetBasis32 = UInt64(byte) ^ offsetBasis32.rotatedLeft(by: 7)
            prime32 = 33 &* prime32 &+ UInt64(byte) &* UInt64(index + 1)
        }
        return offsetBasis32 ^ prime32.rotatedLeft(by: 32)
    }
}

extension UInt64 {
    fileprivate func rotatedLeft(by bits: UInt64) -> UInt64 {
        return (self << bits) | (self >> (64 - bits))
    }
}

// --- Placeholder for the Larger SwiftUI Context (Inferred) ---
// This main function seems to be part of a larger SwiftUI view's body,
// likely within a Task or a conditional block. The `a1` and `a2`
// parameters likely represent `self` (the ContentView instance) and
// possibly some environment or state objects.
// Let's assume this is a function like `validateInputAndPerformAction`
// that might be called from a view's logic.

func validateInputAndPerformAction(inputData: String) -> Bool {
    // Variable setup (v3, v4, v5 seem related to stack setup and input string parameters)
    // The first few lines about `v3 = (char *)&v262 - ... TaskPriority?` seem to be
    // internal stack allocation/setup for an async context, common in Swift concurrency.
    // It's not directly part of the string validation logic in Swift source.

    // Let 'inputString' be the main string we are validating.
    // The decompiled 'input_string' is actually referencing the function's first argument,
    // which corresponds to your `inputString` parameter.

    // --- Start of String Validation Logic (Corresponds to your `checkString` function) ---

    // 1. Initial Prefix and Suffix Checks
    // `input_string._countAndFlagsBits = 'UD'; input_string._object = (void *)0xE200000000000000LL;`
    // These lines are constructing a Swift string literal "UD" for comparison.
    if !inputData.hasPrefix("UD") { return false }

    // `end_of_input_string._countAndFlagsBits = '}.'; end_of_input_string._object = (void *)0xE200000000000000LL;`
    // Constructing string literal "}. " for comparison.
    // NOTE: Your original had "}. " with a space. The decompiled '}.' suggests no space after the dot.
    // Double-check the literal '}.' vs '}. ' if this check fails. Assuming '}.' for now.
    if !inputData.hasSuffix("}.") { return false } // Adjusted suffix based on decompilation

    // 2. Character at Specific Offsets Checks (DUCTF{)
    // The repeated pattern of `_sSS5index_8offsetBy...`, `_sSSySJSS5IndexVcig` (subscript getter),
    // and `_ss27_stringCompareWithSmolCheck__9expecting...` is checking individual characters.
    let startIndex = inputData.startIndex
    // Note: The direct comparisons like `string_at_offset2 ^ 'C' | v11 ^ 0xE100000000000000LL`
    // are highly optimized Swift string comparison for single characters/small literals.
    // If they don't match, it falls back to the more robust `_ss27_stringCompareWithSmolCheck`.
    // We can represent this simply as direct character comparison in high-level Swift.
    guard inputData.count > 5 else { return false } // Ensure string is long enough for these checks

    if inputData[inputData.index(startIndex, offsetBy: 2)] != "C" { return false }
    if inputData[inputData.index(startIndex, offsetBy: 3)] != "T" { return false }
    if inputData[inputData.index(startIndex, offsetBy: 4)] != "F" { return false }
    if inputData[inputData.index(startIndex, offsetBy: 5)] != "{" { return false }

    // 3. Drop First and Substring for `processedString`
    // `after_DUCTF = specialized Collection.dropFirst(_:)(6LL, v5, v4);`
    // `after_DUCTF = _sSs5index_8offsetBy07limitedC0SS5IndexVSgAE_SiAEtF(v31, -2LL, after_DUCTF, after_DUCTF, v31, v33, v35);`
    // This second call with `-2LL` on `after_DUCTF` (which is the result of `dropFirst`) and then assigning to `target_index`
    // implies getting a substring from the dropped string. If `dropFirst(6)` gives `s[6...]`, then offsetting by `-2LL`
    // from the end of *that* string and taking up to that index means `s[6..<s.count - 2]`
    let droppedString = inputData.dropFirst(6) // This creates a Substring
    let targetIndex: String.Index // This should be `droppedString.index(droppedString.endIndex, offsetBy: -2)`
    if droppedString.count >= 2 { // Ensure enough characters for offsetBy -2 from end
        targetIndex = droppedString.index(droppedString.endIndex, offsetBy: -2) // Changed from -3 to -2 based on decompilation
    } else {
        // This 'else' path for `targetIndex` in your original decompilation was `droppedString.startIndex`.
        // However, `_sSs5index_8offsetBy07limitedC0SS5IndexVSgAE_SiAEtF`
        // which resolves to `String.Index.init(_:offsetBy:limitedBy:)` or similar
        // implies a nullable result if the index goes out of bounds.
        // For robustness, ensure `targetIndex` isn't less than `startIndex`.
        targetIndex = droppedString.startIndex
        // Or, more robustly, if the offset pushes it before the start, it returns nil.
        // Assuming it's `droppedString.index(droppedString.endIndex, offsetBy: -2)`
        // which makes sense for excluding the last 2 characters.
    }

    // `processedString = _sSS14_fromSubstringySSSshFZ(target_index, v40, v42, v44);`
    // This is `String.init(Substring)`. It creates a new `String` from the `Substring`.
    var processedString = String(droppedString[..<targetIndex]) // Make mutable

    // 4. `processedString` Length and Last Character Check
    // `if ( _sSS5countSivg(processedString, v68) != 29 )`
    if processedString.count != 29 { return false }

    // `specialized BidirectionalCollection.last.getter(processedString, v68);`
    // `if ( !v50 )` and `if ( !(last_proccesedCharacter ^ '.' | v50 ^ 0xE100000000000000LL) )`
    guard let lastCharOfProcessedString = processedString.last else { return false }
    if lastCharOfProcessedString != "." { return false }

    // 5. First Hash Check (on `processedString`)
    // `if ( (unsigned int)String.h()(processedString) != 0xD890BAB5 )`
    let firstHashResult = processedString.h()
    let lower32 = UInt32(truncatingIfNeeded: firstHashResult)
    if lower32 != 0xD890BAB5 { return false }

    // 6. Second Hash Check (on `processedString.reversed()`)
    // This is where the `ReversedCollection<String>` and `ReversedCollection<Substring>` confusion was.
    // The decompilation clearly shows `ReversedCollection<String>` is used for this hash.
    // It's a *new* string, not modifying `processedString` yet.
    let reversedStringForHashCheck = String(processedString.reversed()) // `reversedString` in decompilation
    let hashedRevStr = reversedStringForHashCheck.h()
    // `if ( HIDWORD(hashedRevStr) != 0x80DD5386 ) goto LABEL_56;`
    if (hashedRevStr >> 32) != 0x80DD5386 { return false }

    // 7. Substring Operations (Index 8, then compactMap reassignment)
    // `v67 = _sSS5index_8offsetBySS5IndexVAD_SitF(15LL, 8LL, processedString, v68);`
    // `_sSSySsSnySS5IndexVGcig(15LL, v67, processedString, v68);`
    // This is fetching character at index 8 of the *current* `processedString`.
    // It's not assigned to anything here, so it's likely a temporary value or part of an internal check
    // that doesn't alter the `processedString` variable itself at this exact point.
    // It could also be loading the string for the next operation.
    // Let's assume it's part of the context for how `processedString` is treated for the next reversal.

    // `v73 = _sSSySSxcSTRzSJ7ElementRtzlufC((__int64)&processedString, v71, v72);`
    // `processedString = (__int64)specialized Sequence.compactMap<A>(_:)(v73, v74);`
    // This is the crucial part: `processedString` is reassigned after being reversed and compactMapped.
    // `v73` is created from `processedString` using `ReversedCollection<Substring>`.
    // As `compactMap` with `String?` elements will just filter `nil` (which characters won't be),
    // this essentially reverses `processedString` and reassigns it.
    processedString = String(processedString.reversed()) // processedString is now reversed!

    // 8. Array Conversion and Character Checks (operate on the *new, reversed* `processedString`)
    // `v76 = (void *)_swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Character]);`
    // `v78 = _sSSySSxcSTRzSJ7ElementRtzlufC((__int64)&processedString, (__int64)v76, v77);`
    // This means `v78` is an `Array<Character>` created from `processedString`.
    let processedChars = Array(processedString)

    // `v81 = specialized Collection.first.getter(v78, v283);`
    // `if ( !v82 ) goto LABEL_44;`
    // `if ( v81 ^ 'g' | v82 ^ 0xE100000000000000LL ) { ... compare ... }`
    guard processedChars.count > 0 else { return false }
    guard processedChars[0] == "g" else { return false }

    // `v87 = _sSJ10asciiValues5UInt8VSgvg(v85, v86);`
    // This is `Character.asciiValue.getter`.
    guard processedChars.count > 1 else { return false }
    guard let asciiValueAt1 = processedChars[1].asciiValue else { return false }
    if asciiValueAt1 != Character("i").asciiValue { return false }

    guard processedChars.count > 2 else { return false }
    guard let asciiValueAt2 = processedChars[2].asciiValue else { return false }
    // `v93 = __CFADD__((_BYTE)v92, 'o'); v94 = v92 + 'o'; if ( v93 ) BUG(); v95 = v94 == (char)0x9F;`
    // This is `asciiValueAt2 + 'o'` where 'o' is 111 in ASCII.
    // 0x9F is 159. So `asciiValueAt2 + 111 == 159`.
    if (asciiValueAt2 + 111) != 159 { return false }

    guard processedChars.count > 3 else { return false }
    guard let asciiValueAt3 = processedChars[3].asciiValue else { return false }
    if (asciiValueAt3 % 2) != 0 { return false }

    // `v111 = v280 + v109; processedString = v111 >> 1;`
    // `v112 = _sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ((__int64)&processedString, 1LL);`
    // `v112 ^ 0x67 | v113 ^ 0xE100000000000000LL`
    // This calculates `(asciiValueAt3 + asciiValueAt0) / 2`.
    // It then tries to create a String from this single byte and compares it to "g".
    guard let asciiValueAt0 = processedChars[0].asciiValue else { return false } // Need to fetch it again if not already stored
    let sumOfRelevantAsciiValues = asciiValueAt3 + asciiValueAt0 // `v280` and `v109` from decomp.
    let computedAsciiValue = UInt8(sumOfRelevantAsciiValues / 2)
    let finalCharFromSum = String(bytes: [computedAsciiValue], encoding: .utf8) ?? ""
    if finalCharFromSum != "g" { return false }

    // `specialized Collection.first.getter(processedString, v68);`
    // `if ( v115 ^ 0x63 | v116 ^ 0xE100000000000000LL )`
    // Checks if the *first character* of the *current* `processedString` is 'c'.
    // NOTE: This check `if firstCharAscii != Character("c").asciiValue` in your original
    // must be for `processedChars[0]`. But the decompiled code re-fetches `processedString`'s first char.
    // This check is `processedChars[0] == 'c'`.
    guard processedChars.count > 0 else { return false }
    if processedChars[0] != "c" { return false } // Your original already had this, and it fits.

    // 9. Another `compactMap` and "g5" check
    // `processedString = (__int64)specialized Sequence.compactMap<A>(_:)(processedString, v68);`
    // This is `processedString = String(processedString.compactMap { $0 })`.
    // It's another re-creation of `processedString` from its own characters. If no NILS, it's identity.
    // This means it could be a simple string copy or an explicit conversion back to a new `String` object.
    processedString = String(processedString.compactMap { String($0) }) // Reassigns processedString again.

    // `v122 = _sSSySSxcSTRzSJ7ElementRtzlufC((__int64)&processedString, (__int64)v76, v77);`
    // `if ( v122 ^ 'g5' | v123 ^ 0xE200000000000000LL )`
    // This part is tricky. `v122` is being compared to "g5".
    // `_sSSySSxcSTRzSJ7ElementRtzlufC` (which is `String.init`) is being called
    // with `&processedString` and the metadata for `[Character]` (v76, v77).
    // This suggests it's initializing a *new* string from `processedString` as an array of characters.
    // The result of this new String conversion is what's compared to "g5".
    // This means it's checking if `String(Array(processedString))` is "g5".
    let stringFromArrayOfChars = String(processedChars) // Re-construct string from array
    if stringFromArrayOfChars != "g5" { return false } // This implies processedString *must* be "g5" at this point.

    // 10. Character at Index 27 Check
    // `v127 = _sSS5index_8offsetBySS5IndexVAD_SitF(15LL, 27LL, processedString, v68);`
    // `v128 = _sSSySJSS5IndexVcig(v127, processedString, v68);`
    // `if ( v128 ^ '.' | v129 ^ 0xE100000000000000LL )`
    guard processedChars.count > 27 else { return false }
    if processedChars[27] != "." { return false }

    // 11. `compactMap` for Indices 1 to 4 (likely a more complex filter/map)
    // `v132 = specialized Sequence.compactMap<A>(_:)(1LL, 5LL, processedString, v68);`
    // This `compactMap` is being passed `1LL` and `5LL` as arguments, which usually imply start and end indices or counts.
    // This is very specific. It suggests taking elements from index 1 up to (but not including) index 5.
    // `_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v132, inited);`
    // This is comparing the result of this `compactMap` to a static, initialized `Array<UInt64>` (`unk_562D40`).
    // `_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5` is `Array<UInt64>._bridgeToObjC() == Array<UInt64>._bridgeToObjC()`.
    // It's checking for equality between two arrays of UInt64.
    // This is `compactMappedIndices1To4Result == requiredStaticArray`.
    // The `processedString` is passed as an argument, so it's compact mapping elements derived from processedString.
    let relevantSubstringForCompactMap = String(processedChars[1..<5]) // Characters at index 1, 2, 3, 4
    let compactMappedIndices1To4Result: [UInt64] = relevantSubstringForCompactMap.compactMap { char in
        // The transformation function (closure) is missing in the decompilation,
        // but it must return an Optional<UInt64>.
        // For now, we'll leave it as an empty map.
        return UInt64(char.asciiValue!) // Assuming it just converts to ASCII value
    }
    // `unk_562D40` is a static, pre-defined array of UInt64.
    let requiredStaticArray: [UInt64] = [
        0x0000000000000000,
        0x0000000000000000,
        0x0000000000000005,
        0x000000000000000A,
        0x2100341B8E4EE2E8,
        0x210034688E4EE2B5,
        0x210034748E4EE2C1,
        0x210034638E4EE2B0,
        0x210034058E4ED2D2
    ] // Actual values from unk_562D40 would go here.
    if compactMappedIndices1To4Result != requiredStaticArray { return false }

    // 12. Character ASCII Value System of Equations
    // `v147, v148, v149` are `asciiValues` for characters at indices 14, 15, 24.
    guard processedChars.count > 24 else { return false }
    guard let c14 = processedChars[14].asciiValue,
            let c15 = processedChars[15].asciiValue,
            let c24 = processedChars[24].asciiValue else { return false }

    let iC14 = Int(c14)
    let iC15 = Int(c15)
    let iC24 = Int(c24)

    if !(iC14 + 2 * iC15 + 3 * iC24 == 383 &&
            4 * iC14 + 5 * iC15 + 6 * iC24 == 959 &&
            9 * (iC14 + iC24) + 8 * iC15 == 1641) {
        return false
    }

    // 13. Substrings transformed by `flatMap` must equal "_1p54_sh"
    // `v151 = specialized Collection.dropFirst(_:)(10LL, processedString, v68);` (processedString[10...])
    // `v158 = _sSs5index_8offsetBy07limitedC0SS5IndexVSgAE_SiAEtF(v151, 4LL, ...)` (index 4 characters after start of v151)
    // `v280 = _sSsySsSnySS5IndexVGcig(v151, v158, ...)` (gets substring v151[..<v158]) -> processedString[10..<14]

    // `v164 = specialized Collection.dropFirst(_:)(20LL, processedString, v163);` (processedString[20...])
    // `v171 = _sSs5index_8offsetBy07limitedC0SS5IndexVSgAE_SiAEtF(v164, 4LL, ...)` (index 4 characters after start of v164)
    // `v174 = _sSsySsSnySS5IndexVGcig(v164, v171, ...)` (gets substring v164[..<v171]) -> processedString[20..<24]

    // `v181 = specialized Sequence.flatMap<A>(_:)((unsigned __int64 *)&processedString, v173);`
    // This `flatMap` takes two arguments (`processedString` and `v173` which is the second substring range from index 20).
    // The `flatMap` likely processes these two substrings.
    // The `outlined release of Zip2Sequence<Substring, Substring>` confirms a `Zip2Sequence` is used,
    // meaning the flatMap operates on pairs of elements from two sequences.
    // These two sequences are likely `processedString[10..<14]` and `processedString[20..<24]`.
    // The result of `flatMap` (which could be concatenating transformed characters/substrings)
    // is then used to initialize a `ReversedCollection<[Character]>` and compared.

    let firstFlatMapSubstring = String(processedChars[10..<14]) // processedString[10..<14]
    let secondFlatMapSubstring = String(processedChars[20..<24]) // processedString[20..<24]

    // The actual flatMap logic (the transformation closure) is missing, but the result is checked.
    // For now, hardcode the result as the decompiled code does.
    let combinedTransformedString = "_1p54_sh"
    // The comparison happens after converting the flatMap result to a String via `_sSSySSxcSTRzSJ7ElementRtzlufC`
    // with metadata for `ReversedCollection<[Character]>`. This is complex:
    // It's likely `String(String(firstFlatMapSubstring).flatMap { transform($0) } + String(secondFlatMapSubstring).flatMap { transform($0) }).reversed()`
    // Or even `String(zip(firstSub, secondSub).flatMap { transform($0) }).reversed()`
    // and then the reversed string is compared.
    if combinedTransformedString != "_1p54_sh" { return false } // This check is directly what the decompiled code does.

    // 14. Character at Index 26 Check
    // `v189 = _sSS5index_8offsetBySS5IndexVAD_SitF(15LL, 26LL, processedString, v68);`
    // `v190 = _sSSySJSS5IndexVcig(v189, v187, v188);`
    // `if ( !(v190 ^ 'd' | v191 ^ 0xE100000000000000LL) )`
    guard processedChars.count > 26 else { return false }
    if processedChars[26] != "d" { return false }

    // 15. Loop with Complex Character Transformations
    // This `do-while` loop runs from index 0 to `processedString.count - 2`, stepping by 2.
    // It processes characters in pairs, with complex bitwise operations and checks.
    // The `_sSS18_uncheckedFromUTF8ySSSRys5UInt8VGFZ` is `String.init(bytes:encoding:)`.
    // `_BitScanReverse` is a low-level CPU instruction for finding the most significant bit.
    // This loop is building a new string, char by char, by manipulating the ASCII values
    // of the input characters.
    var resultFromComplexLoop = ""
    guard processedString.count >= 2 else { return false } // Need at least two chars for the loop structure

    // Re-creating the loop is extremely difficult without understanding the `_BitScanReverse`
    // and the specific ASCII manipulations in detail.
    // The target string is checked against `e^1q`.
    // For now, we'll retain your placeholder as it's a very complex low-level transformation.
    let expectedComplexLoopResult = "e^1q"
    // Simplified placeholder for the loop's outcome.
    // The loop would take `processedString[16..<20]` and `processedString[20..<24]`
    // or parts of them, apply transformations, and append.
    // It's producing a string that is then compared to "e^1q".
    // This likely means `processedString[16]` through `processedString[23]` (or a subset)
    // are involved in building this result.
    // Given the hardcoded check, the loop *must* produce "e^1q".
    if expectedComplexLoopResult != "e^1q" { return false }


    // 16. Final ASCII Value System of Equations
    // `v246, v247, v248` are ASCII values of `processedChars[2]`, `processedChars[6]`, `processedChars[8]`.
    // NOTE: Your original had c2, c6, c8. The decompilation points to `v266`, `v57`, `v267`
    // which were assigned values from `processedString` at offsets 2, 6, 8 (from a much earlier part of the code).
    // Make sure these indices are consistent with the `processedChars` array.
    // Given the `processedString` reassignments, we should take values from the *current* `processedChars` array.
    guard processedChars.count > 8 else { return false } // Ensure indices exist

    let c2_val = processedChars[2].asciiValue! // v266 in decompilation
    let c6_val = processedChars[6].asciiValue! // v57 in decompilation
    let c8_val = processedChars[8].asciiValue! // v267 in decompilation

    let iC2 = Int(c2_val)
    let iC6 = Int(c6_val)
    let iC8 = Int(c8_val)

    if !(iC2 + 2 * iC6 + 3 * iC8 == 552 &&
            4 * iC2 + 5 * iC6 + 6 * iC8 == 1404 &&
            6 * iC2 + 8 * iC6 + 9 * iC8 == 2145) {
        return false
    }
    
    return true // All checks passed!
}

// Example usage outside the main function, for testing your `checkString` logic.
// This `t` variable would typically be a @State variable in SwiftUI, or a computed property.
var t = validateInputAndPerformAction(inputData: "UDCTF{giohEcN,_5pYt65Wb%oOs6_x4Rd..}. ")
print(t)