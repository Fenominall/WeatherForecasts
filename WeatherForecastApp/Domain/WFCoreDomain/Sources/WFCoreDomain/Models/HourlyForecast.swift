//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct HourlyForecast {
    public let time: String
    public let temperatureCelsius: Double
    public let isDay: Bool
    public let condition: WeatherCondition
    public let humidity: Int
    public let windKph: Double
    public let chanceOfRain: Int
    
    public init(
        time: String,
        temperatureCelsius: Double,
        isDay: Bool,
        condition: WeatherCondition,
        humidity: Int,
        windKph: Double,
        chanceOfRain: Int
    ) {
        self.time = time
        self.temperatureCelsius = temperatureCelsius
        self.isDay = isDay
        self.condition = condition
        self.humidity = humidity
        self.windKph = windKph
        self.chanceOfRain = chanceOfRain
    }
}
