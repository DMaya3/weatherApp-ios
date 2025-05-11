//
//  MyWeatherApp.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import SwiftUI

@main
struct MyWeatherApp: App {
    @StateObject private var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationManager)
                .environmentObject(WeatherViewModel(name: locationManager.locality ?? ""))
        }
    }
}
