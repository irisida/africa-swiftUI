//
//  MapView.swift
//  africa-swiftui
//
//  Created by ed on 30/05/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - properties
    
    @State private var region: MKCoordinateRegion = {
        // builds a mapRegion from the composite parts
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        // basic map
        //Map(coordinateRegion: $region)
        
        //annoated map
        Map(coordinateRegion: $region,
            annotationItems: locations,
            annotationContent: { item in
                // classic style pin
                // MapPin(coordinate: item.location, tint: .accentColor)
                
                // new style badge
                // MapMarker(coordinate: item.location, tint: .accentColor)
                
                // custom annotation )interactive)
                // MapAnnotation(coordinate: item.location) {
                //    Image("logo")
                //        .resizable()
                //        .scaledToFit()
                //        .frame(width: 32, height: 32, alignment: .center)
                //}
                
                MapAnnotation(coordinate: item.location) {
                    MapAnnotationView(location: item)
                }
        }) // map
            .overlay(
                HStack(alignment: .center, spacing: 16) {
                    Image("compass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text("Latitude")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            
                            Spacer()
                            
                            Text("\(region.center.latitude)")
                                .foregroundColor(.white)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Longitude")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            
                            Spacer()
                            
                            Text("\(region.center.longitude)")
                                .foregroundColor(.white)
                        }
                    }
                } // HStack
                .padding()
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.55)
                )
                .padding()
                ,alignment: .top
            )
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MapView()
        }
    }
}
