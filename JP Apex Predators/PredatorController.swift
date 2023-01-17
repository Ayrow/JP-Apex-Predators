//
//  PredatorController.swift
//  JP Apex Predators
//
//  Created by Aymeric Pilaert on 17/01/2023.
//

import Foundation

class PredatorController {
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "jppapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            } catch {
                print("Error decoding JSON data : \(error)")
            }
        }
        
        
    }
}
