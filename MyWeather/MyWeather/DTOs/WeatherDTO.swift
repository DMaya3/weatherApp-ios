//
//  WeatherDTO.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct WeatherDTO: Codable {
    let astronomy: [AstronomyDTO]
    let avgtempC: String
    let avgtempF: String
    let date: String
    let hourly: [HourlyDTO]
    let maxtempC: String
    let maxtempF: String
    let mintempC: String
    let mintempF: String
    let sunHour: String
    let totalSnowCM: String
    let uvIndex: String

    enum CodingKeys: String, CodingKey {
        case astronomy, avgtempC, avgtempF, date, hourly, maxtempC, maxtempF, mintempC, mintempF, sunHour
        case totalSnowCM = "totalSnow_cm"
        case uvIndex
    }
}
