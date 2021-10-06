//
//  List.swift
//  Leap_Card
//
//  Created by Charlie Brady on 21/07/2021.
//

import SwiftUI

struct AddButtonView: View {
     
    var body: some View {
        // Create the button
        Button(action:{
            NfcActionGroup().scanCard()
        } ){
            Text("Add Card")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                
        }
       // Set the styling to the ButtStyle struct
        .buttonStyle(ButtStyle())
        
    }


}
// Button styling struict
struct ButtStyle: ButtonStyle {
    // Import the custom bounds for each device
    var boarder = bounds()
    // Make configuration function
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            // Button styling
            .frame(minWidth: 0, maxWidth: boarder.w)
            .padding()
            .background(Color("AddButtonColour").opacity(0.5))
            .clipShape(Capsule())            
            .scaleEffect(configuration.isPressed ? 0.93:
                            0.98)
            .hoverEffect(.automatic)
        
    }
    
}



struct AddButtonview_Previews: PreviewProvider {
    static var previews: some View {
        
            AddButtonView()
                .previewLayout(.fixed(width: 390, height: 70))
        
    }
}

