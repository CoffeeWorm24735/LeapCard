//
//  VersionInfo.swift
//  Leap_Card
//
//  Created by Charlie Brady on 02/08/2021.
//

import SwiftUI

struct VersionInfo: View {
    var boarder = bounds()
    var body: some View {
        
        ZStack{
            // Add background color gradient
            LinearGradient(gradient: Gradient(colors: [Color("NavStart"), Color("NavEnd")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                // Add text that is desplayed as the version info
                Text("This is the first version so there is a bit to unpackFirst we have athe navigation bar , FAQ, About Page and thisThen we have the home page with the add button and the edit cards button which at the moment don't really work so ye, We also have the app icons and loading screen. ")
                    .foregroundColor(Color.black)
                    .frame(width: boarder.w - 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
           Spacer()
            .frame(height: 50)
                Text("Beta V0.2 Will have revided UI and hopefully basic script for reading the card")
                    .foregroundColor(Color.black)
        
            }
            .frame(width: boarder.w - 75)
        }
    }
}

struct VersionInfo_Previews: PreviewProvider {
    static var previews: some View {
        VersionInfo()
    }
}
