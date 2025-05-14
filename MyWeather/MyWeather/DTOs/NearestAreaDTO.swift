//
//  NearestArea.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct NearestAreaDTO: Codable, Identifiable {
    var id: String { latitude + longitude }
    let areaName: [WeatherDesc]
    let latitude: String
    let longitude: String

    enum CodingKeys: String, CodingKey {
        case areaName, latitude, longitude
    }
}
