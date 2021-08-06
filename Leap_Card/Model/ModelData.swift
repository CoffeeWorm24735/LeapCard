//
//  ModleData.swift
//  Landmarks
//
//  Created by Charlie Brady on 16/07/2021.
//

import Foundation
import Combine
// Set question to the Questions struct and assign it to the json file
var questions: [Questions] = load("FAQ.json")

// Load the json and cath any errors 
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
