//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/13/25.
//

import Foundation

public enum LocationError: Error, LocalizedError {
    case permissionDenied
    case unableToDetermineLocation
    case locationServicesDisabled
    case timeout
    case unknown(Error)

    public var errorDescription: String? {
        switch self {
        case .permissionDenied:
            return "Location permission was denied."
        case .unableToDetermineLocation:
            return "Unable to determine current location."
        case .locationServicesDisabled:
            return "Location services are disabled on this device."
        case .timeout:
            return "Location request timed out."
        case .unknown(let error):
            return "An unknown location error occurred: \(error.localizedDescription)"
        }
    }
}
