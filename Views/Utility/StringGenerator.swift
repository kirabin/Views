//
//  StringGenerator.swift
//  Views
//
//  Created by kirabin on 13.12.2021.
//

import Foundation

class StringGenerator {
    
    let shared = StringGenerator()
    
    static func generateString(of size: Int) -> String {
        let alpha: [Character] = "abcdifghijklmnopqrstuvwxyz".map({$0})
        var str = ""
        for _ in 0..<size {
            str.append(alpha.randomElement()!)
        }
        return str
    }
    
    static func generateStrings(amount: Int, of size: Range<Int>) -> [String] {
        var strings: [String] = []
        for _ in 0..<amount {
            strings.append(generateString(of: size.randomElement()!))
        }
        return strings
    }
}
