//
//  WeatherUseCase.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Combine

protocol WeatherUseCase {
    func fetchDataWeather(name: String) async -> AnyPublisher<RootDTO, Error>
}

struct DefaultWeatherUseCase: WeatherUseCase {
    private let repository = WeatherDataRepository()
    
    func fetchDataWeather(name: String) async -> AnyPublisher<RootDTO, any Error> {
        return await self.repository.fetchWeatherDataService(name: name)
    }
}
