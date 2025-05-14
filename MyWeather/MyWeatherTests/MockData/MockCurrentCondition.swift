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
            cloudcover: "0",
            humidity: "38",
            localObsDateTime: "2025-05-13 07:01 PM",
            observationTime: "05:01 PM",
            precipInches: "0.0",
            precipMM: "0.0",
            pressure: "1012",
            pressureInches: "30",
            tempC: "22",
            uvIndex: "1",
            visibility: "10",
            visibilityMiles: "6",
            weatherCode: "200",
            weatherDesc: [WeatherDesc(value: "Partly cloudy")],
            weatherIconURL: [WeatherDesc(value: "")],
            winddir16Point: "W",
            winddirDegree: "254",
            windspeedKmph: "13",
            windspeedMiles: "8")
    }
    
    static var current2: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "22",
            cloudcover: "0",
            humidity: "29",
            localObsDateTime: "2025-04-16 05:00 PM",
            observationTime: "03:08 PM",
            precipInches: "0.0",
            precipMM: "0.0",
            pressure: "1025",
            pressureInches: "24",
            tempC: "18",
            uvIndex: "3",
            visibility: "16",
            visibilityMiles: "9",
            weatherCode: "200",
            weatherDesc: [WeatherDesc(value: "Sunny")],
            weatherIconURL: [WeatherDesc(value: "")],
            winddir16Point: "W",
            winddirDegree: "232",
            windspeedKmph: "30",
            windspeedMiles: "10")
    }
    
    static var current3: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "28",
            cloudcover: "0",
            humidity: "10",
            localObsDateTime: "2025-05-13 08:22 AM",
            observationTime: "08:01 AM",
            precipInches: "0.0",
            precipMM: "0.0",
            pressure: "1010",
            pressureInches: "15",
            tempC: "25",
            uvIndex: "1",
            visibility: "34",
            visibilityMiles: "26",
            weatherCode: "200",
            weatherDesc: [WeatherDesc(value: "Sunny")],
            weatherIconURL: [WeatherDesc(value: "")],
            winddir16Point: "W",
            winddirDegree: "176",
            windspeedKmph: "18",
            windspeedMiles: "6")
    }
    
    static var current4: CurrentConditionDTO {
        return CurrentConditionDTO(
            feelsLikeC: "15",
            cloudcover: "0",
            humidity: "45",
            localObsDateTime: "2025-01-27 07:01 PM",
            observationTime: "05:01 PM",
            precipInches: "0.0",
            precipMM: "0.0",
            pressure: "1018",
            pressureInches: "38",
            tempC: "17",
            uvIndex: "1",
            visibility: "10",
            visibilityMiles: "6",
            weatherCode: "200",
            weatherDesc: [WeatherDesc(value: "Thundery outbreaks in nearby")],
            weatherIconURL: [WeatherDesc(value: "")],
            winddir16Point: "W",
            winddirDegree: "254",
            windspeedKmph: "13",
            windspeedMiles: "8")
    }
    
    static var currentConditionList: [CurrentConditionDTO] = [current1,
                                                              current2,
                                                              current3,
                                                              current4].compactMap { $0 }
    
}
