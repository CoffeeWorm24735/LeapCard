//
//  SwiftUIView.swift
//  Leap_CardUITests
//
//  Created by Charlie Brady on 22/07/2021.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
        HStack {
        Image("List")
            .resizable()
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Common Questions")
                .font(.title2)
        
        }
       
            HStack {
            Image("Card")
                .resizable()
                .frame(width: 60, height: 50, alignment: .leading)
                Text("Add/Remove Cards")
                    .font(.title2)
            }
            }
        }
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
