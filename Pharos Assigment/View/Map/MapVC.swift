//
//  MapVC.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController {

    @IBOutlet weak var cityLocationMap: MKMapView!
    var coordinate = [Coordinate]()
    override func viewDidLoad() {
        super.viewDidLoad()

        cityLocationMap.delegate = self
    }
    
}

extension MapVC: MKMapViewDelegate{

}
