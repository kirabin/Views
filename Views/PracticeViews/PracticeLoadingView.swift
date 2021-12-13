//
//  PracticeLoadingView.swift
//  Views
//
//  Created by kirabin on 12.12.2021.
//

import SwiftUI

struct PracticeLoadingView: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Color.primary
                .ignoresSafeArea(.all)
            if isLoading {
                ProgressView()
                    .scaleEffect(2)
                    .tint(.green)
            } else {
                Button(action: loadData, label: {
                    Spacer()
                    Text("Repeat")
                        .font(.title.weight(.semibold))
                        .padding(6)
                    Spacer()
                })
                    .padding()
                    .buttonStyle(.bordered)
                    .tint(.green)
            }
        }
        .onAppear(perform: loadData)
    }
    
    private func loadData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
        }
    }
}

struct PracticeLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeLoadingView()
            .preferredColorScheme(.dark)
    }
}
