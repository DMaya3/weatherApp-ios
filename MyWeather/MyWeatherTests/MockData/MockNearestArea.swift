//
//  MockNearestArea.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 14/5/25.
//

@testable import MyWeather

struct MockNearestArea {
    static var nearestArea1: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "Toledo")],
            latitude: "39.867",
            longitude: "-4.017")
    }
    
    static var nearestArea2: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "Sevilla")],
            latitude: "39.472",
            longitude: "-22.007")
    }
    
    static var nearestArea3: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "Madrid")],
            latitude: "41.827",
            longitude: "14.017")
    }
    
    static var nearestArea4: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "El Puerto de Santamaria")],
            latitude: "40.241",
            longitude: "-3.025")
    }
    
    static var nearestAreaList: [NearestAreaDTO] = [nearestArea1,
                                                    nearestArea2,
                                                    nearestArea3,
                                                    nearestArea4].compactMap { $0 }
}
