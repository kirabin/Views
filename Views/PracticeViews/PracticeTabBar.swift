//
//  TabBarView.swift
//  Views
//
//  Created by kirabin on 12.12.2021.
//

import SwiftUI

struct PracticeTabBar: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem({
                    Image(systemName: "house")
                        .foregroundColor(.red)
                    Text("Home")
                })
                .ignoresSafeArea(.all, edges: .top)
                
            Color.green
                .tabItem({
                    Image(systemName: "photo")
                        .foregroundColor(.red)
                    Text("Feed")
                })
                .ignoresSafeArea(.all, edges: .top)
            Color.orange
                .tabItem({
                    Image(systemName: "person")
                        .foregroundColor(.red)
                    Text("User")
                })
                .ignoresSafeArea(.all, edges: .top)
        }
        
        .tint(Color.red)
        .foregroundColor(.red)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeTabBar()
            
    }
}
