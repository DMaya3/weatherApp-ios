//
//  MockWeatherUseCase.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 14/5/25.
//

import Combine
import Foundation
@testable import MyWeather

class MockWeatherUseCase: WeatherUseCase {
    var result: Result<RootDTO, Error>?
    
    func fetchDataWeather(name: String) async -> AnyPublisher<RootDTO, any Error> {
        guard let result = result else {
            return Fail(error: URLError(.badServerResponse)).eraseToAnyPublisher()
        }
        return result.publisher.eraseToAnyPublisher()
    }
}
