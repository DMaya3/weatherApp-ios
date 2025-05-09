//
//  Request.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation

struct RequestDTO: Codable {
    let query: String
    let type: String
}
