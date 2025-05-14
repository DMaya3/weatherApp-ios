//
//  WeatherDTO.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct WeatherDTO: Codable, Identifiable {
    var id: String { date }
    let date: String
    let maxtempC: String
    let mintempC: String

    enum CodingKeys: String, CodingKey {
        case date, maxtempC, mintempC
    }
}
