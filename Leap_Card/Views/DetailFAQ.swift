//
//  DetailFAQ.swift
//  Leap_Card
//
//  Created by Charlie Brady on 02/08/2021.
//

import SwiftUI

struct DetailFAQ: View {
   
    // Imoort json data and set custom device boundries
    var json: Questions
    var boarder = bounds()

    var body: some View {
        VStack{
           // Import the specfic data needed and desplay it speritaly 
            Text(json.Question)
                .font(.title)
                
            Text(json.Answer)
                .font(.body)
                .frame(width: 230)
            Spacer()
        }
    }
}

struct DetailFAQ_Previews: PreviewProvider {
    static var question = questions
   
    static var previews: some View {
       
        DetailFAQ(json: question[0])
    }
}
