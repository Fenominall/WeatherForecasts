//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct Location {
    public let name: String
    public let country: String
    public let latitude: Double
    public let longitude: Double
    public let localTime: String
    
    public init(
        name: String,
        country: String,
        latitude: Double,
        longitude: Double,
        localTime: String
    ) {
        self.name = name
        self.country = country
        self.latitude = latitude
        self.longitude = longitude
        self.localTime = localTime
    }
}
