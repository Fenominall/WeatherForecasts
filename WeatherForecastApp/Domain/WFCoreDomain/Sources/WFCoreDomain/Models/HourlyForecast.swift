//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

struct HourlyForecast {
    let time: String
    let temperatureCelsius: Double
    let isDay: Bool
    let condition: WeatherCondition
    let humidity: Int
    let windKph: Double
    let chanceOfRain: Int
}
