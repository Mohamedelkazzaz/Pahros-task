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
    var coordinate: Coordinate?
    let manager = CLLocationManager()
    var latitude: String = ""
    var longtuide: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLocationMap.delegate = self
        
        let lat = Double(latitude) ?? 0.0
        let long = Double(longtuide) ?? 0.0
        
        let initialLocation = CLLocation(latitude: lat, longitude: long)
        
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        cityLocationMap.centerToLocation(initialLocation)
        setupMap()
        addAnnotations()
        
    }
    
    func setupMap(){
        let lat = Double(latitude) ?? 0.0
        let long = Double(longtuide) ?? 0.0
        
        let oahuCenter = CLLocation(latitude: lat, longitude: long)
            let region = MKCoordinateRegion(
              center: oahuCenter.coordinate,
              latitudinalMeters: 50000,
              longitudinalMeters: 60000)
            cityLocationMap.setCameraBoundary(
              MKMapView.CameraBoundary(coordinateRegion: region),
              animated: true)
            
            let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 20000)
            cityLocationMap.setCameraZoomRange(zoomRange, animated: true)
    }
    
    func addAnnotations(){
        
            let CLLCoordType = CLLocationCoordinate2D(latitude: Double(latitude) ?? 0.0,
                                                      longitude: Double(longtuide) ?? 0.0);
            let anno = MKPointAnnotation();
            anno.coordinate = CLLCoordType;
            cityLocationMap.addAnnotation(anno);
        
        
    }
    
}

extension MapVC: MKMapViewDelegate{
    
    
}

extension MapVC: CLLocationManagerDelegate{
   
}


private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}



