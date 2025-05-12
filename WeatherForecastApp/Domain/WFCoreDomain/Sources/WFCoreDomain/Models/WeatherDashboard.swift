//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct WeatherDashboard {
    public let location: Location
    public let current: CurrentWeather
    public let forecast: Forecast
    
    public init(
        location: Location,
        current: CurrentWeather,
        forecast: Forecast
    ) {
        self.location = location
        self.current = current
        self.forecast = forecast
    }
}
