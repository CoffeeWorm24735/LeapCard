//
//  SwiftUIView.swift
//  Leap_Card
//
//  Created by Charlie Brady on 26/07/2021.
//

import SwiftUI
import UIKit


// Create a class that holds the value of the menuOpen
class Open: ObservableObject{
    @Published var menuOpen = false
}



// Craete list fior objects in the sode munu bar
struct MenuView: View{
    
    // State variuables that update the menu options
    @State var Menuopen: Bool = false
    @State var FAQ: Bool = false
    @State var Version: Bool = false
    @State var shareOpen: Bool = false
    
    // Min boudaries setting
    var boarder = bounds()
 
   
    // Initaiate the background that helps it reac all corners
    init(){
        UITableView.appearance().backgroundColor = .clear
       }
    var body: some View {
      
        // Create the list of options
        
        List{
            Spacer()
                .frame(height: 50)
                .listRowBackground(Color("SideViewColour"))
            Button {
                self.Menuopen = false 
                self.FAQ.toggle()
                self.Version = false
                self.shareOpen = false
            
            } label: {
                Text("FAQ")
                    .foregroundColor(Color.black)
                    
            }
            
            .listRowBackground(Color("SideViewColour"))
           
            Button(action:{
                self.Version.toggle()
                self.FAQ = false
                self.Menuopen = false
                self.shareOpen = false

               
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
                self.shareOpen = false

               

            })
            {
                Text("About")
                    .foregroundColor(Color.black)
 
            }
            
            .listRowBackground(Color("SideViewColour"))
            .ignoresSafeArea()
            

        
            
        }
        // Set background colour fill
        .background(Color("SideViewColour"))
        .ignoresSafeArea()
       
    
      
        // Open the About page when Menuopen is == true
        Spacer()
            if Menuopen == true {
        
                
             About()
                .background(Color.white)
                .ignoresSafeArea()
                .offset(x: -10)
                 
                   
                    
                   
            
            
        }

        if FAQ {
            FAQview()
            .offset(x: -10)
        }
    
        if Version{
            VersionInfo()
            .offset(x: -10)
        }
        
        
    
    }
    
    
    


    
struct SideMenu: View {
    let width: CGFloat;
    let isOpen: Bool;
    
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
