//
//  FAQ.swift
//  Leap_Card
//
//  Created by Charlie Brady on 02/08/2021.
//

import Foundation
import UIKit

// Create the data that will be parsed from the json file 
struct Questions: Hashable, Codable, Identifiable{
    var id: Int
    var Question: String
    var Answer: String
}
// Create bounds class to hold data for each divice to be called on each view
public class bounds {
    let h: CGFloat = UIScreen.main.bounds.height
    let w: CGFloat = UIScreen.main.bounds.width
}

