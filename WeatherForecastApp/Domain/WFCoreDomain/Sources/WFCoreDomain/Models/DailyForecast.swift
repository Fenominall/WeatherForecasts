//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct DailyForecast {
    public let date: String
    public let maxTempCelsius: Double
    public let minTempCelsius: Double
    public let avgTempCelsius: Double
    public let condition: WeatherCondition
    public let chanceOfRain: Int
    public let sunrise: String
    public let sunset: String
    
    public init(
        date: String,
        maxTempCelsius: Double,
        minTempCelsius: Double,
        avgTempCelsius: Double,
        condition: WeatherCondition,
        chanceOfRain: Int,
        sunrise: String,
        sunset: String
    ) {
        self.date = date
        self.maxTempCelsius = maxTempCelsius
        self.minTempCelsius = minTempCelsius
        self.avgTempCelsius = avgTempCelsius
        self.condition = condition
        self.chanceOfRain = chanceOfRain
        self.sunrise = sunrise
        self.sunset = sunset
    }
}
