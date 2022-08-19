//
//  CityViewModel.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation


class CityViewModel {

    var city: [City]? {
        didSet {
            bindingData(city,nil)
        }
    }
    var error: Error? {
        didSet {
            bindingData(nil, error)
        }
    }
    let apiService: ApiService
    var bindingData: (([City]?,Error?) -> Void) = {_, _ in }
    init(apiService: ApiService = NetworkManager()) {
        self.apiService = apiService
    }
    func fetchCities() {
        apiService.fetchCities(endPoint:1) { cities, error in
            if let cities = cities {
                self.city = cities
                
                print(self.city)
            }
            if let error = error {
                self.error = error
            }
        }
    }
    
    func getCities() -> [City]?{
        return city
        print(city)
    }
    
    func getCity(indexPath: IndexPath) -> City?{
        return city?[indexPath.row]
    }
}
