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
}
