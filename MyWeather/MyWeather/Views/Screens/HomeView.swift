//
//  HomeView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: WeatherViewModel
    
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
                    CurrentConditionView(currentCondition: currentCondition)
                }

                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .foregroundStyle(.white)
        .shadow(radius: 10)
        .background(Color(.cyan))
        .padding()
    }
}
