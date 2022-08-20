//
//  NetworkManager.swift
//  Sports_App
//
//  Created by Mohamed Elkazzaz on 19/06/2022.
//

import Foundation
import UIKit

class NetworkManager: ApiService{
    
    func fetchCities(endPoint: Int, completion: @escaping (([Cities]?, Error?) -> Void)) {
        if let url = URL(string: Url(endPoint: endPoint).url){
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    guard let decodedData = try? JSONDecoder().decode([Cities].self, from: data) else{ return}
                    completion(decodedData,nil)
                    print(decodedData)
                    
                }
                if let error = error {
                    completion(nil,error)
                }
            }.resume()
        }
    }
    

}
