//
//  MapViewActionButton.swift
//  parking_app
//
//  Created by Bianka B on 4/22/23.
//
// The menu button used to go back to map view and back 

import SwiftUI

struct MapViewActionButton: View {
    @Binding var mapState: MapViewState
    
    
    var body: some View {
        Button {
            withAnimation(.spring ()) {
                actionForState(mapState)
            }
        }
    label: {
        Image(systemName: imageNameForState(mapState))
            .font(.title2)
            .foregroundColor(.black)
            .padding()
            .background(.white)
            .clipShape(Circle())
            .shadow(color: .black, radius: 6)
    }
    .frame(maxWidth: .infinity, alignment: .trailing)
    }
    func actionForState(_ state: MapViewState) {
        switch state {
        case .noInput:
            print("No input")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected:
            mapState = .noInput
        }
    }
    func imageNameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected:
            return "arrow.left"
            
        }
    }
    
    
    struct MapViewActionButton_Previews: PreviewProvider {
        static var previews: some View {
            MapViewActionButton(mapState: .constant(.noInput))
        }
    }
}
