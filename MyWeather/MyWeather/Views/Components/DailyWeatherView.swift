//
//  DailyWeatherView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 13/5/25.
//

import SwiftUI

struct DailyWeatherView: View {
    let weather: WeatherDTO
    var dfHelper: DateFormatterHelpers {
        ImpDateFormatterHelpers()
    }
    
    init(weather: WeatherDTO) {
        self.weather = weather
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            HStack(spacing: 45) {
                Text(dfHelper.getDayOfWeek(from: weather.date))
                Spacer()
                Text("\(weather.mintempC)º")
                Text("\(weather.maxtempC)º")
            }
            .fontWeight(.bold)
        }
        .frame(width: UIScreen.main.bounds.width - 65)
        .padding(.horizontal, 15)
    }
}
