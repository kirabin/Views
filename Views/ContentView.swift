//
//  ContentView.swift
//  Views
//
//  Created by kirabin on 12.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink("Tab View") {
                        PracticeTabBar()                        
                    }
                    NavigationLink("Loading View") {
                        PracticeLoadingView()
                    }
                } header: {
                    Text("Practicing Views")
                }
                
                Section {
                    
                } header: {
                    Text("Custom Views")
                }
                
            }
            .navigationTitle(Text("Views").foregroundColor(.primary))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
