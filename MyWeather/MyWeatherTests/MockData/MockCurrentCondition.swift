//
//  MockCurrentCondition.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 14/5/25.
//

@testable import MyWeather

struct MockCurrentCondition {
    static var current1: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "24",
            humidity: "38",
            localObsDateTime: "2025-05-13 07:01 PM",
            tempC: "22",
            visibility: "10",
            visibilityMiles: "6",
            weatherDesc: [WeatherDesc(value: "Partly cloudy")],
            winddirDegree: "254",
            windspeedKmph: "13")
    }
    
    static var current2: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "22",
            humidity: "29",
            localObsDateTime: "2025-04-16 05:00 PM",
            tempC: "18",
            visibility: "16",
            visibilityMiles: "9",
            weatherDesc: [WeatherDesc(value: "Sunny")],
            winddirDegree: "232",
            windspeedKmph: "30")
    }
    
    static var current3: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "28",
            humidity: "10",
            localObsDateTime: "2025-05-13 08:22 AM",
            tempC: "25",
            visibility: "34",
            visibilityMiles: "26",
            weatherDesc: [WeatherDesc(value: "Sunny")],
            winddirDegree: "176",
            windspeedKmph: "18")
    }
    
    static var current4: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "15",
            humidity: "45",
            localObsDateTime: "2025-01-27 07:01 PM",
            tempC: "17",
            visibility: "10",
            visibilityMiles: "6",
            weatherDesc: [WeatherDesc(value: "Thundery outbreaks in nearby")],
            winddirDegree: "254",
            windspeedKmph: "13")
    }
    
    static var currentConditionList: [CurrentConditionDTO] = [current1,
                                                              current2,
                                                              current3,
                                                              current4].compactMap { $0 }
    
}
