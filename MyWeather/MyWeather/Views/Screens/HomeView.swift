//
//  HomeView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: WeatherViewModel
    @EnvironmentObject private var locationManager: LocationManager
    @State private var showSearchList: Bool = false
    var dfHelper: DateFormatterHelpers {
        ImpDateFormatterHelpers()
    }
    
    var body: some View {
        if self.locationManager.status == .notDetermined {
            VStack {
                ProgressView()
                Text("Getting permission...")
            }
        } else if self.locationManager.status == .denied || self.locationManager.status == .restricted{
            DeniedPermissionView()
        } else {
            ScrollView {
                VStack {
                    TopBarView(showSearchList: $showSearchList)

                    ForEach(self.viewModel.areasName) { area in
                        Text(area.value)
                            .font(.system(size: 38))
                            .padding(.top, 10)
                    }

                    ForEach(self.viewModel.currentCondition) { currentCondition in
                        if let weather = viewModel.weather.first {
                            CurrentConditionView(currentCondition: currentCondition, weather: weather)
                        }
                    }
                    
                    Text("\(self.viewModel.weather.count)-days forecast".uppercased())
                    ForEach(self.viewModel.weather) { weather in
                        DailyWeatherView(weather: weather)
                    }

                    Spacer()
                }
                .padding(.vertical, 20)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .foregroundStyle(.white)
            .shadow(radius: 10)
            .background(LinearGradient(colors: [Color(.cyan), Color(.cyan), Color(.yellow)], startPoint: .topLeading, endPoint: .bottomTrailing))
            .padding()
            .alert(isPresented: $locationManager.showLocationDeniedAlert) {
                Alert(
                    title: Text("Required Location Permission"),
                    message: Text("You have to allow location permission to use this app"),
                    dismissButton: .cancel())
            }
            .sheet(isPresented: $showSearchList) {
                SearchView(viewModel: self.viewModel) { selectedCity in
                    Task {
                        await self.viewModel.fetchWeather(name: selectedCity.name)
                    }
                    showSearchList = false
                }
            }
        }
    }
}
