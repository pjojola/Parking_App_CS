//
//  ContentView.swift
//  parking_app
//
//  Created by Pat Jojola on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 75) {
            Text("Parking App")
                .font(.system(size: 55))
                .padding(50)
                
            Button {
            } label: {
                Text("Find Parking")
                   .padding()
            }
            
            Button {
            } label: {
                Text("Campus Map")
                   .padding()
            }
            
            Button {
            } label: {
                Text("Settings")
                   .padding()
            }
            
            Text("Scuff Development Inc.")
                .font(.system(size: 25))
                .padding(50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
