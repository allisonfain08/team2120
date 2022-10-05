//
//  ContentView.swift
//  atlsfw
//
//  Created by Allison Fain on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {    // goes top to bottom on the screen
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("EKlozet")
                .font(.title)
            
            Text("Welcome to your \n sustainable closet!")
                .font(.subheadline)
            
            Button("Let's Go!") {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
