//
//  AddWallet.swift
//  Leap_Card
//
//  Created by Charlie Brady on 08/09/2021.
//

import SwiftUI
import UIKit
import PassKit

struct AddWallet: View {
    let passButton =  PKAddPassButton(addPassButtonStyle: PKAddPassButtonStyle.black)
    var body: some View {
        
        ZStack{
            // Background
            LinearGradient(gradient: Gradient(colors: [Color("GraStart"), Color("GraEnd")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text("Yay your card has been scanned and now its time to add it to your wallet")
                    .foregroundColor(Color("HomeText"))
                    .font(.title)
                    .fontWeight(.medium)
                    
            Spacer()
                .frame(height: 20, alignment: .center)
            
                Text("Your card number is 12345678 (The number on the card). Click the button when you want to add it!!")
                    .font(.title2)
                    .foregroundColor(Color.black)
           
               
                
            
            }//HStack
                }//zStack
    }
}

class ViewCon: UIViewController {
    var button: UIButton!

        override func viewDidLoad() {
            super.viewDidLoad()

            addWalletButton()

        }
   
    func addWalletButton() {
        let passButton =  PKAddPassButton(addPassButtonStyle: PKAddPassButtonStyle.black)
        passButton.center = view.center
        view.addSubview(passButton)
    }

}

class PKStoredValuePassProperties : NSObject{
    convenience init?(for pass: PKPass)
}

struct AddWallet_Previews: PreviewProvider {
    static var previews: some View {
        AddWallet()
    }
}
