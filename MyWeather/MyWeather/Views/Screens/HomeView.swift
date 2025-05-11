//
//  HomeView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: WeatherViewModel
    
    // TODO: Design the view
    var body: some View {
        VStack(spacing: 20) {
            ForEach(self.viewModel.nearestArea) { area in
                if let locality = area.region.first?.value {
                    Text(locality)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
