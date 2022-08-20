//
//  ApiService.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation
import UIKit

protocol ApiService{
    func fetchCities(pageNumber: Int, completion: @escaping (([Cities]?, Error?) -> Void))
}
