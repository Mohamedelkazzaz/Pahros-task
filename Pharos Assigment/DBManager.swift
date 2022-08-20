//
//  DBManager.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import Foundation
import CoreData


class DBManager{
    static let sharedInstanse = DBManager()
    private init(){}
}

extension DBManager{

    func addCities(appDelegate: AppDelegate,country: String,name: String,id: String,lat: String,lon: String){
      

        let managedContext = appDelegate.persistentContainer.viewContext

        
        if let entity = NSEntityDescription.entity(forEntityName: "CityModel", in: managedContext){

            let cityModel = NSManagedObject(entity: entity, insertInto: managedContext)
            cityModel.setValue(id, forKey: "id")
            cityModel.setValue(country, forKey: "country")
            cityModel.setValue(name, forKey: "name")
            cityModel.setValue(lat, forKey: "lat")
            cityModel.setValue(lon, forKey: "lon")
            do {
                try managedContext.save()
            }catch let error as NSError {
                print("Error in saving")
                print(error.localizedDescription)
            }
        }
    }
}
