//
//  ContentView.swift
//  SwiftuiTutorialsPart2
//
//  Created by Shashank on 1/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    NavigationLink("1. GaugeTutorial", destination: GaugeTutorial())
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Swiftui Tutorials")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
