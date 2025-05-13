//
//  WeatherDTO.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct WeatherDTO: Codable, Identifiable {
    var id: String { date }
    let astronomy: [AstronomyDTO]
    let avgtempC: String
    let date: String
    let hourly: [HourlyDTO]
    let maxtempC: String
    let mintempC: String
    let sunHour: String
    let totalSnowCM: String
    let uvIndex: String

    enum CodingKeys: String, CodingKey {
        case astronomy, avgtempC, date, hourly, maxtempC, mintempC, sunHour
        case totalSnowCM = "totalSnow_cm"
        case uvIndex
    }
}
