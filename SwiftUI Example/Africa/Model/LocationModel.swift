//
//  LocationModel.swift
//  LocationModel
//
//  Created by Fomagran on 2021/08/10.
//

import Foundation
import MapKit

struct AnimalLocation:Codable,Identifiable {
    var id:String
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    //Computed Property
    var location:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
