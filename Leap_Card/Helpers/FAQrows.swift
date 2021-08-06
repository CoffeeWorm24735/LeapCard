//
//  FAQrows.swift
//  Leap_Card
//
//  Created by Charlie Brady on 02/08/2021.
//

import SwiftUI

struct FAQrows: View {
    // Set custom wide for each device used
    let w: CGFloat = UIScreen.main.bounds.width
    // import the json data
    var json: Questions
    var body: some View {
        HStack{
           // Diaplay the Question
            Text(json.Question)
                .font(.title2)
        
          
        }
    }
}

struct FAQrows_Previews: PreviewProvider {
    static var question = questions

    static var previews: some View {
        Group{
        FAQrows(json: question[0])
        FAQrows(json: question[6])

    }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
