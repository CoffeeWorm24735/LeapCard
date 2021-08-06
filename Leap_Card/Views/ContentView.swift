//
//  ContentView.swift
//  Leap_Card
//
//  Created by Charlie Brady on 15/07/2021.
//
//10, 166, 39
import SwiftUI
import UIKit




struct ContentView: View {
   
    @State var menuOpen: Bool = false
    var boarder = bounds()

    var body: some View {
        // Add ZStack for backgroud color
       
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("GraStart"), Color("GraEnd")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                
        
        VStack {
            //if !self.menuOpen {
                   
            Button(action: {
                        self.openMenu()
                        
                    }, label: {
                            Image("menu")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .leading)
                                .animation(.linear)
                                .rotationEffect(.degrees( 90))
                                

                        Spacer()
                        
                    })
            
            
            
            Text("To add your first LeapCard click the button below to  begin the scan")
                .foregroundColor(Color("HomeText"))
           
               Spacer()
                .frame( height: 300)
            
          
            
           
            AddButtonView()
                // Add offset so they appear in the center of the screen
                .offset(y: 20)
        
            Spacer()
              
            // Add Version to bottom of screen 
            Text("Beta V0.1")
                .frame(width: boarder.w, height: 20, alignment: .trailing)
                .offset(x: -50)
                .foregroundColor(.black)
        
                
            
        
        }
            

            MenuView.SideMenu(
                        width: 120,
                         isOpen: self.menuOpen
                         )
            
          
            
        
        
        }
       
       
   
    }
    
    
    func openMenu() {
        self.menuOpen.toggle()
        print(self.menuOpen)
    }
    
    func close() {
        self.menuOpen.toggle()
        print("close")
        print(self.menuOpen)
        self.openMenu()
        openMenu()
    }
    
    
}
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }

}
