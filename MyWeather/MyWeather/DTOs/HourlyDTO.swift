//
//  HourlyDTO.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct HourlyDTO: Codable {
    let dewPointC: String
    let dewPointF: String
    let feelsLikeC: String
    let feelsLikeF: String
    let heatIndexC: String
    let heatIndexF: String
    let windChillC: String
    let windChillF: String
    let windGustKmph: String
    let windGustMiles: String
    let chanceoffog: String
    let chanceoffrost: String
    let chanceofhightemp: String
    let chanceofovercast: String
    let chanceofrain: String
    let chanceofremdry: String
    let chanceofsnow: String
    let chanceofsunshine: String
    let chanceofthunder: String
    let chanceofwindy: String
    let cloudcover: String
    let diffRAD: String
    let humidity: String
    let precipInches: String
    let precipMM: String
    let pressure: String
    let pressureInches: String
    let shortRAD: String
    let tempC: String
    let tempF: String
    let time: String
    let uvIndex: String
    let visibility: String
    let visibilityMiles: String
    let weatherCode: String
    let weatherDesc: [WeatherDesc]
    let weatherIconURL: [WeatherDesc]
    let winddir16Point: String
    let winddirDegree: String
    let windspeedKmph: String
    let windspeedMiles: String

    enum CodingKeys: String, CodingKey {
        case dewPointC = "DewPointC"
        case dewPointF = "DewPointF"
        case feelsLikeC = "FeelsLikeC"
        case feelsLikeF = "FeelsLikeF"
        case heatIndexC = "HeatIndexC"
        case heatIndexF = "HeatIndexF"
        case windChillC = "WindChillC"
        case windChillF = "WindChillF"
        case windGustKmph = "WindGustKmph"
        case windGustMiles = "WindGustMiles"
        case chanceoffog, chanceoffrost, chanceofhightemp, chanceofovercast, chanceofrain, chanceofremdry, chanceofsnow, chanceofsunshine, chanceofthunder, chanceofwindy, cloudcover
        case diffRAD = "diffRad"
        case humidity, precipInches, precipMM, pressure, pressureInches
        case shortRAD = "shortRad"
        case tempC, tempF, time, uvIndex, visibility, visibilityMiles, weatherCode, weatherDesc
        case weatherIconURL = "weatherIconUrl"
        case winddir16Point, winddirDegree, windspeedKmph, windspeedMiles
    }
}

struct WeatherDesc: Codable {
    let value: String
}
