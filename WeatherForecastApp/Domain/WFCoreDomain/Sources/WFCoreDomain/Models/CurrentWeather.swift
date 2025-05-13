//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct CurrentWeather {
    public let temperatureCelsius: Double
    public let feelsLikeCelsius: Double
    public let isDay: Bool
    public let condition: WeatherCondition
    public let windKph: Double
    public let humidity: Int
    public let uvIndex: Double
    
    public init(
        temperatureCelsius: Double,
        feelsLikeCelsius: Double,
        isDay: Bool,
        condition: WeatherCondition,
        windKph: Double,
        humidity: Int,
        uvIndex: Double
    ) {
        self.temperatureCelsius = temperatureCelsius
        self.feelsLikeCelsius = feelsLikeCelsius
        self.isDay = isDay
        self.condition = condition
        self.windKph = windKph
        self.humidity = humidity
        self.uvIndex = uvIndex
    }
}
