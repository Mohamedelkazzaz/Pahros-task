//
//  ApiService.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation
import UIKit

protocol ApiService{
    func fetchCities(endPoint: Int, completion: @escaping (([City]?, Error?) -> Void))
    func downloadImage(url: String, completion: @escaping ((UIImage?, Error?) -> Void))
}
