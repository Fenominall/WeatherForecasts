//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct Forecast {
    public let daily: [DailyForecast]
    public let hourly: [HourlyForecast]
    
    public init(
        daily: [DailyForecast],
        hourly: [HourlyForecast]
    ) {
        self.daily = daily
        self.hourly = hourly
    }
}
