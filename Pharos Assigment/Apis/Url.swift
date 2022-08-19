//
//  Url.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation

struct Url {
    var endPoint = Int()
    var url: String {
        return "http://assignment.pharos-solutions.de/cities.json?page=\(endPoint)"
    }
    
    func googleMapApi(lat: String, long: String) -> String {
        let apiKey = "AIzaSyA-p-uarBSvUJTN1askw3t9o7EZjqzIZyk"
        let mapLink = "https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=600x300&maptype=roadmap&markers=color:red:\(lat),\(long)&key=\(apiKey)"
        return mapLink
    }
}
