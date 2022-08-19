//
//  CityViewModel.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation


class CityViewModel {
    var searchedText = ""
    var city: [City] = [] {
        didSet {
            filterdCities = city
            search(with: searchedText)
        }
    }
    var filterdCities: [City] = [] {
        didSet {
            bindingData(filterdCities,nil)
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
    
    func viewIsloaded() {
        fetchCities(pageNumber: 1)
    }
    
    func checkIfNeedToFetchNewPage() {
        let pageNumber = self.city.count / 50 + 1
        fetchCities(pageNumber: pageNumber)
    }
    
    private func fetchCities(pageNumber: Int){
        apiService.fetchCities(endPoint: pageNumber) { cities, error in
            if let cities = cities {
                // add to core data
                self.city.append(contentsOf: cities)
                print(self.city)
            }
            if let error = error {
                self.error = error
            }
        }
    }
    func search(with: String) {
        if with.isEmpty {
            filterdCities = city
            return
        }
        searchedText = with
        self.filterdCities = self.city.filter { itemCity in
            return itemCity.name?.contains(with) ?? false
        }
    }
    
    func getCities() -> [City]?{
        return filterdCities
        print(city)
    }
    
    func getCity(indexPath: IndexPath) -> City?{
        return filterdCities[indexPath.row]
    }
}
