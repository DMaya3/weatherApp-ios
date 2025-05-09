//
//  NearestArea.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct NearestAreaDTO: Codable {
    let areaName: [WeatherDesc]
    let country: [WeatherDesc]
    let latitude: String
    let longitude: String
    let population: String
    let region: [WeatherDesc]
    let weatherURL: [WeatherDesc]

    enum CodingKeys: String, CodingKey {
        case areaName, country, latitude, longitude, population, region
        case weatherURL = "weatherUrl"
    }
}
