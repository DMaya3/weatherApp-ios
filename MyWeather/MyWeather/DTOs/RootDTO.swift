//
//  Welcome.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct RootDTO: Codable {
    let currentCondition: [CurrentConditionDTO]
    let nearestArea: [NearestAreaDTO]
    let request: [RequestDTO]
    let weather: [WeatherDTO]

    enum CodingKeys: String, CodingKey {
        case currentCondition = "current_condition"
        case nearestArea = "nearest_area"
        case request, weather
    }
}
