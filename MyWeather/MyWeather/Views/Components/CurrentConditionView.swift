//
//  CurrentConditionView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 12/5/25.
//

import SwiftUI

struct CurrentConditionView: View {
    var currentCondition: CurrentConditionDTO
    
    init(currentCondition: CurrentConditionDTO) {
        self.currentCondition = currentCondition
    }
    
    var body: some View {
        VStack {
            Text("\(self.currentCondition.tempC)º")
                .font(.system(size: 85))
                .fontDesign(.rounded)
            
            Text("Feels Like: \(self.currentCondition.feelsLikeC)º")
                .font(.title2)
                .fontWeight(.bold)
                .opacity(0.8)
            
            Text(self.currentCondition.weatherDesc.first?.value ?? "")
                .font(.title2)
                .fontWeight(.bold)
                .opacity(0.8)
            
            HStack {
                CardView(
                    icon: "humidity.fill",
                    title: "Humidity".capitalized,
                    value: "\(self.currentCondition.humidity)%")
                
                CardView(
                    icon: "eye.fill",
                    title: "Visiblity".capitalized,
                    value: "\(self.currentCondition.visibility) Km")
            }
            
            Text(formatDate(self.currentCondition.localObsDateTime))
                .font(.title)
        }
        .frame(maxWidth: .infinity)
    }
}

extension CurrentConditionView {
    func formatDate(_ input: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm a"
        guard let date = formatter.date(from: input) else { return "Invalid date" }
        
        formatter.dateFormat = "EEEE, MMMM d"
        return formatter.string(from: date)
    }
}
