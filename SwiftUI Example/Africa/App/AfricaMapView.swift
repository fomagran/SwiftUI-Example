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
        Map(coordinateRegion: $region,annotationItems: locations,annotationContent:{ item in
            //old style map marker
//            MapPin(coordinate: item.location, tint: .accentColor)
            //new style map marker
//            MapMarker(coordinate: item.location, tint: .accentColor)
            //custom basic annotation
//            MapAnnotation(coordinate: item.location) {
//                Image("Africalogo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }
            
            //custom annotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })
            .overlay(
                HStack(alignment: .center, spacing: 12) {
              
                Image("compass")
                            .resizable()
                            .scaledToFit()
                        .frame(width: 48, height: 48, alignment: .center)
                    
                    VStack(alignment: .leading, spacing: 3) {
                        HStack {
                            Text("Latitude:")
                                .font(.footnote)
                                .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.latitude)")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                        Divider()
                        HStack {
                            Text("Logitude::")
                                .font(.footnote)
                                .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.longitude)")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                    }
                }
                    .padding(.vertical,12)
                    .padding(.horizontal,16)
                    .background(Color.black
                                    .cornerRadius(8)
                                    .opacity(0.6)
                               )
                    .padding()
                ,alignment:.top
            )

    }
}

//MARK:- Preview

struct AfricaMapView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaMapView()
    }
}
