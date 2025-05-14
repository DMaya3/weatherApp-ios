//
//  CurrentCondition.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

struct CurrentConditionDTO: Codable, Identifiable {
    var id: String { localObsDateTime }
    let feelsLikeC: String
    let humidity: String
    let localObsDateTime: String
    let tempC: String
    let visibility: String
    let visibilityMiles: String
    let weatherDesc: [WeatherDesc]
    let winddirDegree: String
    let windspeedKmph: String

    enum CodingKeys: String, CodingKey {
        case feelsLikeC = "FeelsLikeC"
        case humidity, localObsDateTime
        case tempC = "temp_C"
        case visibility, visibilityMiles, weatherDesc
        case winddirDegree, windspeedKmph
    }
}

struct WeatherDesc: Codable, Identifiable {
    var id: String { value }
    let value: String
}
