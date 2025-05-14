//
//  WeatherMVTest.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 14/5/25.
//

import XCTest
import Combine
@testable import MyWeather

final class WeatherMVTest: XCTestCase {
    var weatherVM: WeatherViewModel?
    var mockUseCase: MockWeatherUseCase?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        mockUseCase = MockWeatherUseCase()
        weatherVM = WeatherViewModel(name: "Sevilla")
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        weatherVM = nil
        mockUseCase = nil
    }
    
    func testSuscriberWeatherSuccess() async {
        // Given
        let expectedRoot = RootDTO(
            currentCondition: MockCurrentCondition.currentConditionList,
            nearestArea: MockNearestArea.nearestAreaList,
            weather: MockWeather.weatherList)
        
        mockUseCase?.result = .success(expectedRoot)
        weatherVM?.useCase = mockUseCase!
        
        let expectation = XCTestExpectation(description: "Data loaded")
        
        // When
        await weatherVM?.suscriberWeather(name: "Toledo") {
            expectation.fulfill()
        }
        
        // Then
        await fulfillment(of: [expectation], timeout: 1.0)
        XCTAssertEqual(weatherVM?.currentCondition.first?.tempC, "22")
        XCTAssertEqual(weatherVM?.weather.first?.date, "2025-05-14")
        XCTAssertEqual(weatherVM?.areasName.first?.value, "Toledo")
    }
    
    func testLoadCitiesFromJsonSuccess() {
        // When
        weatherVM?.loadCitiesFromJson()
        
        // Then
        XCTAssertNotNil(weatherVM?.cities)
        XCTAssertEqual(weatherVM?.cities.first?.name, "Sevilla")
        XCTAssertEqual(weatherVM?.cities.first?.region, "Andalucía")
    }
}
