//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

struct CurrentWeather {
    let temperatureCelsius: Double
    let feelsLikeCelsius: Double
    let isDay: Bool
    let condition: WeatherCondition
    let windKph: Double
    let humidity: Int
    let uvIndex: Double
}
