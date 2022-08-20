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
        let mapLink = "https://maps.googleapis.com/maps/api/staticmap?center=\(lat),\(long)&zoom=12&size=100x60&key=\(apiKey)"
        return mapLink
    }
}

//https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=100x60&maptype=roadmap&markers=color:red:29,76&key=AIzaSyA-p-uarBSvUJTN1askw3t9o7EZjqzIZyk


//https://maps.googleapis.com/maps/api/staticmap?center=\(lat),\(long)&zoom=12&size=400x400&key=\(apiKey)


//"https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=100x60&maptype=roadmap&markers=color:red:\(lat),\(long)&key=\(apiKey)"
