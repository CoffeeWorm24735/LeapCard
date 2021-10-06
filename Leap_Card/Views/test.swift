//
//  test.swift
//  Leap_Card
//
//  Created by Charlie Brady on 02/09/2021.
//

import SwiftUI

struct test: View {
   let x = true
    let y = NfcActionGroup()
    var body: some View {
        VStack{
        Text("Test")
        Button(action: {
            y.scanCard()
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
    }
    }

}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
