//
//  CityViewModel.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation
import UIKit

class CityViewModel {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var searchedText = ""
    var cityModel: Cities?
    var city: [Cities] = [] {
        didSet {
            filterdCities = city
            search(with: searchedText)
        }
    }
    var filterdCities: [Cities] = [] {
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
    var bindingData: (([Cities]?,Error?) -> Void) = {_, _ in }
    init(apiService: ApiService = NetworkManager()) {
        self.apiService = apiService
    }
    
    func viewIsloaded() {
        fetchCities(pageNumber: 1)
    }
    
    func checkIfNeedToFetchNewPage() {
        guard searchedText.isEmpty else{
            return
        }
        let pageNumber = self.city.count / 50 + 1
        fetchCities(pageNumber: pageNumber)
    }
    
    private func fetchCities(pageNumber: Int){
        apiService.fetchCities(pageNumber: pageNumber) { cities, error in
            if let cities = cities {
                // add to core data
                
                DBManager.sharedInstanse.addCities(appDelegate: self.appDelegate, country: self.cityModel?.country ?? "", name: self.cityModel?.name ?? "", id: self.cityModel?.id ?? "", lat: self.cityModel?.coordinate.lat ?? "", lon: self.cityModel?.coordinate.lon ?? "")
                self.city.append(contentsOf: cities)
                print(self.city)
            }
            if let error = error {
                self.error = error
            }
        }
    }
    func search(with: String) {
        searchedText = with
        if with.isEmpty {
            filterdCities = city
            return
        }
       
        self.filterdCities = self.city.filter { itemCity in
            return itemCity.name?.contains(with) ?? false
        }
    }
    
    func getCities() -> [Cities]?{
        return filterdCities
        print(city)
    }
    
    func getCity(indexPath: IndexPath) -> Cities?{
        guard indexPath.row < filterdCities.count else{
            return nil
        }
        return filterdCities[indexPath.row]
    }
}
