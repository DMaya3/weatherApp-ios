//
//  NetworkingHelpers.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 9/5/25.
//

import Foundation
import Combine

extension Publisher {
    func sinkToResult(_ result: @escaping (Result<Output, Failure>) -> Void) -> AnyCancellable {
        return sink { completion in
            switch completion {
            case let .failure(error):
                result(.failure(error))
            default: break
            }
        } receiveValue: { value in
            result(.success(value))
        }
    }
}

extension Subscribers.Completion {
    var error: Failure? {
        switch self {
        case .failure(let error): return error
        default: return nil
        }
    }
}
