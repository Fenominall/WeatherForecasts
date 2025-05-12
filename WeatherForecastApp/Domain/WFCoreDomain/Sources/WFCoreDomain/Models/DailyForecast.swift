//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

struct DailyForecast {
    let date: String
    let maxTempCelsius: Double
    let minTempCelsius: Double
    let avgTempCelsius: Double
    let condition: WeatherCondition
    let chanceOfRain: Int
    let sunrise: String
    let sunset: String
}
