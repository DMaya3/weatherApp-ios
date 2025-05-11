//
//  LocationManager.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()
    private let geocoder = CLGeocoder()
    
    @Published var locality: String?
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        let status = manager.authorizationStatus
        
        switch status {
        case .notDetermined:
            print("Location permission not determined yet.")
        case .restricted, .denied:
            print("Location access denied/restricted.")
        case .authorizedAlways, .authorizedWhenInUse:
            print("Location access granted.")
            manager.startUpdatingLocation()
        @unknown default:
            print("Unknown status")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        reverseGeocode(location)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Location error: \(error.localizedDescription)")
    }
    
    private func reverseGeocode(_ location: CLLocation) {
        geocoder.reverseGeocodeLocation(location) { [weak self] placemarks, error in
            DispatchQueue.main.async {
                if let placemark = placemarks?.first {
                    self?.locality = placemark.locality
                }
            }
        }
    }
    
}
