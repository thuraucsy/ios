//
//  MapViewController.swift
//  FoodPin
//
//  Created by ThuraAung on 1/4/16.
//  Copyright © 2016 ThuraAung. All rights reserved.
//

import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet var mapView:MKMapView!
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // convert address to coordinate and annotate it on map
        // placemark is textual address
        // annotation is just a pin
        // annotation consists of Obj and View
        // annotatin View is called in mapView
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location, completionHandler: {
            placemarks, error in
            
            if error != nil {
                print(error)
                return
            }
            
            if placemarks != nil && placemarks!.count > 0 {
                let placemark = placemarks![0] as CLPlacemark
                
                // add annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type
                annotation.coordinate = placemark.location!.coordinate
                
                self.mapView.showAnnotations([annotation], animated: true)
                // auto select the pin or annotation
                self.mapView.selectAnnotation(annotation, animated: true)
            }
            
        })
        
        // delegate of map View
        mapView.delegate = self
    }
    
    // for overriding annotation default view
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "MyPin"
        
        // if annotation is user's current location, we don't change the design
        if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        // reuse the annotation if possible
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
        
        // if there no cache
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        }
        
        let leftIconView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
        leftIconView.image = UIImage(data: restaurant.image)
        annotationView?.leftCalloutAccessoryView = leftIconView
        
        return annotationView
    }
    
    
}
