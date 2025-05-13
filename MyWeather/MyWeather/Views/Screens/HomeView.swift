//
//  HomeView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: WeatherViewModel
    var dfHelper: DateFormatterHelpers {
        ImpDateFormatterHelpers()
    }
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(systemName: "paperplane.fill")
                    Text("HOME")
                        .font(.callout)
                }
                .shadow(radius: 10)
                .padding(.top, 45)

                ForEach(self.viewModel.nearestArea) { area in
                    if let locality = area.areaName.first?.value {
                        Text(locality)
                            .font(.system(size: 38))
                            .padding(.top, 10)
                    }
                }

                ForEach(self.viewModel.currentCondition) { currentCondition in
                    if let weather = viewModel.weather.first {
                        CurrentConditionView(currentCondition: currentCondition, weather: weather)
                    }
                }
                
                ForEach(self.viewModel.weather) { weather in
                    DailyWeatherView(weather: weather)
                }

                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .foregroundStyle(.white)
        .shadow(radius: 10)
        .background(LinearGradient(colors: [Color(.cyan), Color(.cyan), Color(.yellow)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .padding()
    }
}
