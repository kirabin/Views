//
//  PracticeLazyVGrid.swift
//  Views
//
//  Created by kirabin on 13.12.2021.
//

import SwiftUI

struct PracticeLazyVGrid: View {
    let data = StringGenerator.generateStrings(amount: 1000, of: 3..<10)
    
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
}

struct PracticeLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        PracticeLazyVGrid()
    }
}
