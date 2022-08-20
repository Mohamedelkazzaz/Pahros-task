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
    
//    func getData(from url: String, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
//        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
//    }
    
//    func downloadImage(url: String, completion: @escaping ((UIImage?, Error?) -> Void)) {
//        completion(nil,nil)
//    }
    
//    func downloadImage(from url: URL) {
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                guard
//                    let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
//                    let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
//                    let data = data, error == nil,
//                    let image = UIImage(data: data)
//                    else { return }
//                DispatchQueue.main.async() { [weak self] in
//                    self?.image = image
//                }
//            }.resume()
//        }
//    func downloadImage(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
//        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
//    }
    
}
