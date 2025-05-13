//
//  WeatherViewModel.swift
//  MyWeather
//
//  Created by David Jesús Maya Quirós on 10/5/25.
//


import Combine
import Foundation

class WeatherViewModel: ObservableObject {
    @Published var currentCondition: [CurrentConditionDTO] = []
    @Published var weather: [WeatherDTO] = []
    @Published var areasName: [WeatherDesc] = []
    @Published var cities: [CityDTO] = []
    private var suscription = Set<AnyCancellable>()
    
    var useCase: WeatherUseCase {
        DefaultWeatherUseCase()
    }
    
    init(name: String) {
        Task {
            await self.fetchWeather(name: name)
        }
        self.loadCitiesFromJson()
    }
    
    func fetchWeather(name: String) async {
        await self.suscriberWeather(name: name)
    }
    
}

// MARK: - Fetch Data
extension WeatherViewModel {
    func weatherPublisher(name: String) async -> AnyPublisher<RootDTO, Error> {
        return await self.useCase.fetchDataWeather(name: name)
    }
    
    func suscriberWeather(name: String) async {
        await weatherPublisher(name: name)
            .sink { [weak self] completion in
                self?.handleCompletion(completion)
            } receiveValue: { [weak self] root in
                self?.currentCondition = root.currentCondition
                self?.weather = root.weather
                self?.areasName = root.nearestArea.flatMap { $0.areaName }
            }
            .store(in: &suscription)
    }
    
    func loadCitiesFromJson() {
        guard let url = Bundle.main.url(forResource: "Cities", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decoded = try? JSONDecoder().decode([CityDTO].self, from: data) else {
            print("Failed to fetch or decode Cities.json")
            return
        }
        self.cities = decoded
    }
}

// MARK: - Handle Errors
private extension WeatherViewModel {
    func handleCompletion(_ completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let failure):
            print(failure.localizedDescription)
        }
    }
}
