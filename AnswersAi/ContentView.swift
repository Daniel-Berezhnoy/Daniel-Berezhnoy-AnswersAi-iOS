//
//  ContentView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Let's GO!")
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
