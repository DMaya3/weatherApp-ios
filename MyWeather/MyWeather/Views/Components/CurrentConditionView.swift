//
//  CurrentConditionView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 12/5/25.
//

import SwiftUI

struct CurrentConditionView: View {
    let currentCondition: CurrentConditionDTO
    let weather: WeatherDTO
    
    var dfHelper: DateFormatterHelpers {
        ImpDateFormatterHelpers()
    }
    
    init(currentCondition: CurrentConditionDTO, weather: WeatherDTO) {
        self.currentCondition = currentCondition
        self.weather = weather
    }
    
    var body: some View {
        VStack {
            Text("\(self.currentCondition.tempC)º")
                .font(.system(size: 85))
                .fontDesign(.rounded)
            
            HStack {
                if let weatherDesc = currentCondition.weatherDesc.first?.value {
                    Text(weatherDesc)
                        .font(.title2)
                        .fontWeight(.bold)
                        .opacity(0.8)
                    
                    Image(systemName: self.getWeatherIcon(weatherDesc))
                }
                
            }
            Text("H: \(self.weather.maxtempC)º | L: \(self.weather.mintempC)º")
                .font(.title2)
            
            Text(dfHelper.formatDate(self.weather.date))
                .font(.title)
                .padding(.top, 6)
            
            HStack {
                CardView(
                    icon: "thermometer.medium",
                    title: "Feels like",
                    value: "\(self.currentCondition.feelsLikeC)º",
                    description: "Similar to the actual temperature")
                
                CardView(
                    icon: "wind",
                    title: "wind",
                    value: "\(self.currentCondition.windspeedKmph) km/h",
                    description: "The wind´s direction is currently \(self.currentCondition.winddirDegree)º")
            }
            
            HStack {
                CardView(
                    icon: "humidity.fill",
                    title: "Humidity",
                    value: "\(self.currentCondition.humidity)%")
                
                CardView(
                    icon: "eye.fill",
                    title: "Visiblity",
                    value: "\(self.currentCondition.visibility) Km",
                    description: "The visibility is about \(self.currentCondition.visibilityMiles) miles")
            }
        }
        .frame(maxWidth: .infinity)
    }
}

extension CurrentConditionView {
    
    func getWeatherIcon(_ weatherStatus: String) -> String {
        switch weatherStatus {
        case "Sunny":
            return "sun.max.fill"
        case "Partly cloudy":
            return "cloud.sun.fill"
        case "Thundery outbreaks in nearby":
            return "cloud.sun.rain.fill"
        case "Patchy rain nearby":
            return "cloud.bolt.rain.fill"
        default:
            return "cloud.fill"
        }
    }
}
