//
//  PracticePages.swift
//  Views
//
//  Created by kirabin on 12.12.2021.
//

import SwiftUI

struct PracticePages: View {
    var body: some View {
        ZStack {
            TabView {
                ZStack {
                    Color.mint
                        .ignoresSafeArea(.all)
                }
                ZStack {
                    Color.orange
                        .ignoresSafeArea(.all)
                }
                ZStack {
                    Color.pink
                        .ignoresSafeArea(.all)
                }
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
            
        }
    }
}

struct PracticeStories_Previews: PreviewProvider {
    static var previews: some View {
        PracticePages()
    }
}
