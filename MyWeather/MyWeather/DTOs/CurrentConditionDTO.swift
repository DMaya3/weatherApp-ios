//
//  CurrentCondition.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

struct CurrentConditionDTO: Codable, Identifiable {
    var id: String { localObsDateTime }
    let feelsLikeC: String
    let cloudcover: String
    let humidity: String
    let localObsDateTime: String
    let observationTime: String
    let precipInches: String
    let precipMM: String
    let pressure: String
    let pressureInches: String
    let tempC: String
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
        case feelsLikeC = "FeelsLikeC"
        case cloudcover, humidity, localObsDateTime
        case observationTime = "observation_time"
        case precipInches, precipMM, pressure, pressureInches
        case tempC = "temp_C"
        case uvIndex, visibility, visibilityMiles, weatherCode, weatherDesc
        case weatherIconURL = "weatherIconUrl"
        case winddir16Point, winddirDegree, windspeedKmph, windspeedMiles
    }
}
