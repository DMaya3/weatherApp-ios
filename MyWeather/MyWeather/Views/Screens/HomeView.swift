//
//  HomeView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        VStack(spacing: 20) {
            if let location = locationManager.userLocation {
                Text("Latitude: \(location.latitude)")
                Text("Longitude: \(location.longitude)")
            } else {
                Text("Getting location...")
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
