//
//  MyWeatherTests.swift
//  MyWeatherTests
//
//  Created by David Jesús Maya Quirós on 14/5/25.
//

import XCTest
@testable import MyWeather

final class WeatherRepositoryTest: XCTestCase {
    
    func testCallAPISuccess() throws {
        // Given
        let request = self.getRequest()
        
        // When
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let _ = data, error == nil, let result = response as? HTTPURLResponse else {
                XCTFail("Connection error: \(String(describing: error))")
                return
            }
            
            // Then
            do {
                XCTAssertTrue(result.statusCode == 200)
            }
        }.resume()
    }
    
    func testCallAPIAndReturnDataSuccess() throws {
        // Given
        let request = self.getRequest()
        
        // When
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil, let result = response as? HTTPURLResponse else {
                XCTFail("Connection error: \(String(describing: error))")
                return
            }
            
            // Then
            do {
                let root = try JSONDecoder().decode(RootDTO.self, from: data)
                XCTAssertNotNil(root)
                XCTAssertNotNil(root.currentCondition)
                XCTAssertNotNil(root.nearestArea)
                XCTAssertNotNil(root.weather)
            } catch {
                XCTFail(error.localizedDescription)
            }
        }.resume()
    }
}

extension WeatherRepositoryTest {
    func getRequest() -> URLRequest {
        let stringUrl = "https://wttr.in/sevilla?format=j1"
        let url = URL(string: stringUrl)!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json: charset=utf8", forHTTPHeaderField: "Content-Type")
        
        return request
    }
}
