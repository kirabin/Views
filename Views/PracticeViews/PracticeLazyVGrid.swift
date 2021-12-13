//
//  PracticeLazyVGrid.swift
//  Views
//
//  Created by kirabin on 13.12.2021.
//

import SwiftUI

struct PracticeLazyVGrid: View {
    let data = generateStrings(amount: 1000, of: 9)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .padding(8)
                        .frame(maxWidth: .infinity)
                        .background(.orange)
                        .cornerRadius(10)
                        .lineLimit(1)
                }
            }
            .padding()
        }
    }
    
    static func generateString(of size: Int) -> String {
        let alpha: [Character] = "abcdifghijklmnopqrstuvwxyz".map({$0})
        var str = ""
        for _ in 0..<size {
            str.append(alpha.randomElement()!)
        }
        return str
    }
    
    static func generateStrings(amount: Int, of size: Int) -> [String] {
        var strings: [String] = []
        for _ in 0..<amount {
            strings.append(generateString(of: size))
        }
        return strings
    }
}

struct PracticeLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        PracticeLazyVGrid()
    }
}
