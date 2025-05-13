//
//  CityDTO.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 13/5/25.
//

import Foundation

struct CityDTO: Codable, Identifiable {
    var id: String { name }
    let name: String
    let province: String
    let region: String
}
