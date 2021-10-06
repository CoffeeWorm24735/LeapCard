//
//  ContentView.swift
//  Leap_Card
//
//  Created by Charlie Brady on 15/07/2021.
//
//10, 166, 39
import SwiftUI
import UIKit



struct ContentView: View{
   

    let x = NfcActionGroup()
    var boarder = bounds()
    @State var menuOpen = false
    @State var Menu = true
    @State var ShareOpen = false
    let ImageShare = Image(systemName: "square.and.arrow.up").resizable()
    var body: some View {
        // Add ZStack for backgroud color
        
        
        
        ZStack{
            // BAckground
         
            LinearGradient(gradient: Gradient(colors: [Color("GraStart"), Color("GraEnd")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            if menuOpen{
            MenuView.SideMenu(
                        width: 120,
                isOpen: self.menuOpen
                
            )
                
            }
        VStack {
           
            
            HStack{
               
            Button(action: {
                self.menuOpen.toggle()
                self.Menu.toggle()
                print(menuOpen)

                        
                    }, label: {
                            Image("menu")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .topLeading)
                                .animation(.linear)
                                .rotationEffect(.degrees( 90))
                                

                        Spacer()
                        
                    })
            .frame(width: 60, height: 40, alignment: .leading)
            Spacer()
                
            }
            if Menu{
                Spacer()
                    .frame(height: 50)
                Image("logo")
                    .resizable()
                    .frame(width: boarder.w - 120, height: boarder.w - 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("To add your first LeapCard tap the button below to  begin the scan")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("HomeText"))
                    .lineLimit(nil)
           
               Spacer()
                .frame( height: 50)
            
          
            
           
            AddButtonView()
                // Add offset so they appear in the center of the screen
                .offset(y: 20)
        
            Spacer()
              
            // Add Version to bottom of screen 
                HStack{
                Text("Beta V0.2")
                .frame(height: 20)
                .offset(x: -50)
                .foregroundColor(.black)
                   
                Spacer()
                    .frame(width: boarder.w - 250)
                       
                // Share Button
                ImageShare.onTapGesture{
                    self.ShareOpen = true
            
                }
                .foregroundColor(.black)
                .frame(width: 30, height: 35, alignment: .trailing)
                
            
      
            
                }
                // Open Share menu
                .sheet(isPresented: $ShareOpen) {
                   ShareSheet(activityItems: ["Hello World"])
        }
        
           
           
            }
          
            if Menu == false{
                Spacer()
                    .frame(height: boarder.h - 130)
            }


        
        }
       
   
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
