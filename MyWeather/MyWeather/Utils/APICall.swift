//
//  APICall.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//


import Foundation

protocol APICall {
    var path: String { get }
    var method: String { get }
    var headers: [String : String] { get }
    func body() throws -> Data?
}

extension APICall {
    func urlRequest(baseUrl: String, add: String = "") throws -> URLRequest {
        guard let url = URL(string: baseUrl + self.path + add) else {
            throw APIError.invalidUrl
        }
        var request = URLRequest(url: url)
        request.httpMethod = self.method
        request.allHTTPHeaderFields = self.headers
        request.httpBody = try self.body()
        return request
    }
}

typealias HTTPCode = Int
typealias HTTPCodes = Range<HTTPCode>

extension HTTPCodes {
    static let success = 200 ..< 300
}
