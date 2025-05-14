//
//  MockWeather.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 14/5/25.
//

@testable import MyWeather

struct MockWeather {
    static var weather1: WeatherDTO {
        return WeatherDTO(
            avgtempC: "15",
            date: "2025-05-14",
            maxtempC: "21",
            mintempC: "10",
            sunHour: "13.5",
            totalSnowCM: "0.0",
            uvIndex: "2")
    }
    
    static var weather2: WeatherDTO {
        return WeatherDTO(
            avgtempC: "15",
            date: "2025-05-14",
            maxtempC: "21",
            mintempC: "10",
            sunHour: "13.5",
            totalSnowCM: "0.0",
            uvIndex: "2")
    }
    
    static var weather3: WeatherDTO {
        return WeatherDTO(
            avgtempC: "15",
            date: "2025-05-14",
            maxtempC: "21",
            mintempC: "10",
            sunHour: "13.5",
            totalSnowCM: "0.0",
            uvIndex: "2")
    }
    
    static var weather4: WeatherDTO {
        return WeatherDTO(
            avgtempC: "15",
            date: "2025-05-14",
            maxtempC: "21",
            mintempC: "10",
            sunHour: "13.5",
            totalSnowCM: "0.0",
            uvIndex: "2")
    }
    
    static var weatherList: [WeatherDTO] = [weather1,
                                            weather2,
                                            weather3,
                                            weather4].compactMap { $0 }
}
