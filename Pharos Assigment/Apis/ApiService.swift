//
//  ApiService.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation

protocol ApiService{
    func fetchCities(endPoint: Int, completion: @escaping (([City]?, Error?) -> Void))
}
