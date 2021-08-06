//
//  AddButton.swift
//  Leap_Card
//
//  Created by Charlie Brady on 21/07/2021.
//

import SwiftUI


struct AddButton: View {
    var body: some View {
        VStack{
        Button(action: {
            
        }) {
        // Imprt Image and resixe to fit
            Image("Circle")
            .resizable()
               .frame(width: 350, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        
        }
        //Import buttonStyle to button stack
       // Add Spacer so it appeasrs at the top
        .buttonStyle(ButtonView())
        .padding()
            Spacer()
        }
      
    }
}
// Create the object hiklding the button styling objects
struct ButtonView: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
       configuration.label
            // Layers in the button styling 
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: 4)
            //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .scaleEffect(configuration.isPressed ? 1.0 : 1.05)
        
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
