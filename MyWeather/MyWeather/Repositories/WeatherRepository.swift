//
//  WeatherRepository.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation
import Combine

protocol WeatherRepository: WebRepository {
    func fetchWeatherDataService(name: String) async -> AnyPublisher<RootDTO, Error>
}

struct WeatherDataRepository: WeatherRepository {
    var session: URLSession = URLSession.shared
    var baseUrl: String = "https://wttr.in/"
    var bgQueue: DispatchQueue = DispatchQueue(label: "bg_parse_queue")
    
    
    func fetchWeatherDataService(name: String) async -> AnyPublisher<RootDTO, any Error> {
        return call(endpoint: API.weather(name: name), name: "weather")
    }
}

extension WeatherDataRepository {
    enum API {
        case weather(name: String)
    }
}

extension WeatherDataRepository.API: APICall {
    var path: String {
        switch self {
        case .weather(let name):
            return "\(name)?format=j1"
        }
    }
    
    var method: String {
        return "GET"
    }
    
    var headers: [String : String] {
        return ["Acept" : "application/json"]
    }
    
    func body() throws -> Data? {
        return nil
    }
}
