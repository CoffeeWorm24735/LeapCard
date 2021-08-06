//
//  FAQview.swift
//  Leap_Card
//
//  Created by Charlie Brady on 02/08/2021.
//

import SwiftUI

struct FAQview: View {
    // Set custom boudries for each deviece
    var boarder = bounds()
    var body: some View {
        // Create a navigation view
        NavigationView{
            // MAke a list in the navigation
            List(questions){ i in
                // Set the destination of the list object
                NavigationLink(destination: DetailFAQ(json: i)) {
                    FAQrows(json: i)
                
            }
            }
            .navigationTitle("FAQ")
        }
            // Set frame so it will fit in area beside the sidemenu
        .frame(width: boarder.w - 75, height: boarder.h - 40, alignment: .center)
    }
}

struct FAQview_Previews: PreviewProvider {
    static var previews: some View {
        FAQview()
    }
}
