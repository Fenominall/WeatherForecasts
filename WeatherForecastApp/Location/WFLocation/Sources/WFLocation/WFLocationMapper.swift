//
//  File.swift
//  WFLocation
//
//  Created by Fenominall on 5/13/25.
//

import Foundation
import WFCoreDomain
import CoreLocation

public struct WFPlacemarkMapper {
    
    public static func map(from placemark: CLPlacemark, coordinate: CLLocationCoordinate2D) -> WFCoreDomain.WFLocation {
        return WFLocation(
            name: placemark.locality ?? "Unknown",
            country: placemark.country ?? "Unknown",
            latitude: coordinate.latitude,
            longitude: coordinate.longitude,
            localTime: WFDateFormatters
                .iso8601WithFractionalSeconds()
                .string(from: Date())
        )
    }
}

extension WFLocation {
    static let moscow = WFLocation(
        name: "Moscow",
        country: "Russia",
        latitude: 55.7558,
        longitude: 37.6176,
        localTime: WFDateFormatters
            .iso8601WithFractionalSeconds()
            .string(from: Date())
    )
}
