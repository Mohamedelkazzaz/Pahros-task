//
//  City.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation

struct City: Codable{
    var country: String
    var name: String
    var id: String
    var coordinate: Coordinate
    
    enum CodingKeys: String, CodingKey{
        case country, name
        case id = "_id"
        case coordinate = "coord"
    }
}

struct Coordinate: Codable {
    var lat: String
    var lon: String
}
