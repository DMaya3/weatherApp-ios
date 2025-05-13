//
//  DateFormatterHelpers.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 13/5/25.
//

import Foundation

protocol DateFormatterHelpers {
    func formatDate(_ input: String) -> String
    func getDayOfWeek(from dateString: String) -> String
}

struct ImpDateFormatterHelpers: DateFormatterHelpers {
    func formatDate(_ input: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        guard let date = formatter.date(from: input) else { return "Invalid date" }
        
        formatter.dateFormat = "EEEE, MMMM d"
        return formatter.string(from: date)
    }
    
    func getDayOfWeek(from dateString: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        guard let date = formatter.date(from: dateString) else { return "Invalid date" }
        
        formatter.dateFormat = "EEEE"
        return formatter.string(from: date)
    }
}
