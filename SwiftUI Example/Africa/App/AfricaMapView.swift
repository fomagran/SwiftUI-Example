//
//  AfricaMapView.swift
//  AfricaMapView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI
import MapKit

struct AfricaMapView: View {
    
    //MARK:- Properties
    
    @State private var region:MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations:[AnimalLocation] = Bundle.main.decode("locations.json")
    
    //MARK:- Body
    
    var body: some View {
        Map(coordinateRegion: $region)
        
        Map(coordinateRegion: $region,annotationItems: locations,annotationContent:{ item in
            //old style map marker
//            MapPin(coordinate: item.location, tint: .accentColor)
            //new style map marker
//            MapMarker(coordinate: item.location, tint: .accentColor)
            //custom annotation
            MapAnnotation(coordinate: item.location) {
                Image("Africalogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
            
        })
    }
}

//MARK:- Preview

struct AfricaMapView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaMapView()
    }
}
