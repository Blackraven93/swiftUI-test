//
//  MapView.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/02.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
           center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
           span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
       )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
