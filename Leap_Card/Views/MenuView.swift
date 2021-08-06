//
//  SwiftUIView.swift
//  Leap_Card
//
//  Created by Charlie Brady on 26/07/2021.
//

import SwiftUI
import UIKit


// Craete list fior objects in the sode munu bar
struct MenuView: View{
    let otherViewController: ContentView = ContentView()

    
    
    @State var Menuopen: Bool = false
    @State var FAQ: Bool = false
    @State var Version: Bool = false
    // Min boudaries setting
    var boarder = bounds()
    
    // Set background colour fill
    init(){
           UITableView.appearance().backgroundColor = .clear
       }
    var body: some View {
       
        // Create the list of options
        List{
            Button {
                self.Menuopen = false 
                self.FAQ.toggle()
                self.Version = false
            } label: {
                Text("FAQ")
                    .foregroundColor(Color.black)
                    
            }
            
            .listRowBackground(Color("SideViewColour"))
           
            Button(action:{
                self.Version.toggle()
                self.FAQ = false
                self.Menuopen = false
               
            })
            {
                Text("Version Info")
                    .foregroundColor(Color.black)
                
                
            }
            
            
            .listRowBackground(Color("SideViewColour"))
            Button(action:{
                self.Menuopen.toggle()
                self.FAQ = false
                self.Version = false
               

            })
            {
                Text("About")
                    .foregroundColor(Color.black)
 
            }
            
            .listRowBackground(Color("SideViewColour"))
            .ignoresSafeArea()
            
            // Exit Button
            Button(action: {
                self.Menuopen = false
                self.FAQ = false
                self.Version = false
                otherViewController.close()
            }){
                
            }
            // Exit button styling
            .frame(width: boarder.w, height: boarder.h - 170, alignment: .center)
            .background(Color("SideViewColour"))
            .ignoresSafeArea()
            .offset(x: -20, y: -10)

        }
        .background(Color("SideViewColour"))
        .ignoresSafeArea()
        
        // Open the About page when Menuopen is == trie
        if Menuopen == true {
        
                
             About()
                .background(Color.white)
                .ignoresSafeArea()
                  .offset(x: 80)
                   
                    
                   
            
            
        }

        if FAQ {
            FAQview()
                .offset(x: 80)
        }
    
        if Version{
            VersionInfo()
                .offset(x: 80)
        }
    
    
    }
    


    
struct SideMenu: View {
    let width: CGFloat 
    let isOpen: Bool
    //let menuClose: () -> Void
    
    var body: some View{
        ZStack{
            
            GeometryReader{_ in
                EmptyView()
            }
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            
        }
        HStack {
            MenuView()
                .frame(width: self.width)
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.default)
                //.background(Color.green)
            Spacer()
        }
     
    }
}

    
struct MenueView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
}
