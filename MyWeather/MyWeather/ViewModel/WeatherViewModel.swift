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
    @Published var nearestArea: [NearestAreaDTO] = []
    @Published var weather: [WeatherDTO] = []
    private var suscription = Set<AnyCancellable>()
    
    var useCase: WeatherUseCase {
        DefaultWeatherUseCase()
    }
    
    init(name: String) {
        Task {
            await self.fetchWeather(name: name)
        }
    }
    
    // TODO: The parameter is empty
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
                self?.nearestArea = root.nearestArea
                self?.weather = root.weather
            }
            .store(in: &suscription)
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
