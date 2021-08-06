//
//  About.swift
//  Leap_Card
//
//  Created by Charlie Brady on 26/07/2021.
//

import SwiftUI

struct About: View {
    var body: some View {
        // Set boudries for each divice
        let h: CGFloat = UIScreen.main.bounds.height
        let w: CGFloat = UIScreen.main.bounds.width
        ZStack{
            // Set gray background
            LinearGradient(gradient: Gradient(colors: [Color("NavStart"), Color("NavEnd")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        
        
            VStack{
           // Add text that is displayed in the view
            Text("well done for accualy testing the app ")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .frame(width: 200)
            Text("Here is a cookie for your hard work :)")
                .font(.body)
                .foregroundColor(Color.black)
                .frame(width: 200)
                Image("cookie")
                    .offset(x: -10)
            
        }   // Set frame so it will fit in the area beside the sidemenu
            .frame(width: w - 75, height: h, alignment: .center)
        }
}

}
public struct About_Previews: PreviewProvider {
  public  static var previews: some View {
        About()
    }
}
