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
            country: [WeatherDesc(value: "España")],
            latitude: "39.867",
            longitude: "-4.017",
            population: "75054",
            region: [WeatherDesc(value: "Castilla La-Mancha")],
            weatherURL: [WeatherDesc(value: "")])
    }
    
    static var nearestArea2: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "Sevilla")],
            country: [WeatherDesc(value: "España")],
            latitude: "39.472",
            longitude: "-22.007",
            population: "89234",
            region: [WeatherDesc(value: "Andalucia")],
            weatherURL: [WeatherDesc(value: "")])
    }
    
    static var nearestArea3: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "Madrid")],
            country: [WeatherDesc(value: "España")],
            latitude: "41.827",
            longitude: "14.017",
            population: "90054",
            region: [WeatherDesc(value: "Madrid")],
            weatherURL: [WeatherDesc(value: "")])
    }
    
    static var nearestArea4: NearestAreaDTO {
        return NearestAreaDTO(
            areaName: [WeatherDesc(value: "El Puerto de Santamaria")],
            country: [WeatherDesc(value: "España")],
            latitude: "40.241",
            longitude: "-3.025",
            population: "65921",
            region: [WeatherDesc(value: "Andalucia")],
            weatherURL: [WeatherDesc(value: "")])
    }
    
    static var nearestAreaList: [NearestAreaDTO] = [nearestArea1,
                                                    nearestArea2,
                                                    nearestArea3,
                                                    nearestArea4].compactMap { $0 }
}
