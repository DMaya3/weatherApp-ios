//
//  SearchView.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 13/5/25.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.colorScheme) private var colorScheme
    @State private var searchText = ""
    let viewModel: WeatherViewModel
    var onCitySelected: (CityDTO) -> Void
    
    init(viewModel: WeatherViewModel, onCitySelected: @escaping (CityDTO) -> Void) {
        self.viewModel = viewModel
        self.onCitySelected = onCitySelected
    }
    
    var body: some View {
        NavigationView {
            List(filteredCities) { city in
                Button {
                    onCitySelected(city)
                } label: {
                    Text("\(city.name), \(city.province), \(city.region)")
                        .foregroundStyle(self.colorByColorScheme)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search locality")
        }
    }
}

extension SearchView {
    var filteredCities: [CityDTO] {
        if searchText.isEmpty {
            return self.viewModel.cities
        } else {
            return self.viewModel.cities.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.province.localizedCaseInsensitiveContains(searchText) ||
                $0.region.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var colorByColorScheme: Color {
        self.colorScheme == .dark ? .white : .black
    }
}
