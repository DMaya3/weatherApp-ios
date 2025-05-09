//
//  AstronomyDTO.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct AstronomyDTO: Codable {
    let moonIllumination: String
    let moonPhase: String
    let moonrise: String
    let moonset: String
    let sunrise: String
    let sunset: String

    enum CodingKeys: String, CodingKey {
        case moonIllumination = "moon_illumination"
        case moonPhase = "moon_phase"
        case moonrise, moonset, sunrise, sunset
    }
}
