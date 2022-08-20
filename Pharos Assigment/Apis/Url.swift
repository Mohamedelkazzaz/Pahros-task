//
//  Url.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation

struct Url {
    var pageNumber = Int()
    var url: String {
        return "http://assignment.pharos-solutions.de/cities.json?page=\(pageNumber)"
    }
    
    func googleMapApi(lat: String, long: String) -> String {
        let apiKey = "AIzaSyA-p-uarBSvUJTN1askw3t9o7EZjqzIZyk"
        let mapLink = "https://maps.googleapis.com/maps/api/staticmap?center=\(lat),\(long)&zoom=15&size=800x2000&key=\(apiKey)"
        return mapLink
    }
}


