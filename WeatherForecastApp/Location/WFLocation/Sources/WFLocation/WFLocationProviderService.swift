//
//  File.swift
//  WFLocation
//
//  Created by Fenominall on 5/13/25.
//

import Foundation
import WFCoreDomain
import CoreLocation

public final class CoreLocationProvider: NSObject, WFLocationProvider {
    private let locationManager: CLLocationManager
    private var locationContinuation: CheckedContinuation<WFLocation, Error>?
    
    public init(
        locationManager: CLLocationManager
    ) {
        self.locationManager = locationManager
        super.init()
        self.locationManager.delegate = self
    }
    
    public func getCurrentLocation() async throws -> WFLocation {
        guard CLLocationManager.locationServicesEnabled() else {
            throw WFLocationError.locationServicesDisabled
        }
        
        let status = locationManager.authorizationStatus
        guard status == .authorizedWhenInUse || status == .authorizedAlways else {
            return WFLocation.moscow
        }
        
        return try await withCheckedThrowingContinuation { continuation in
            self.locationContinuation = continuation
            locationManager.requestLocation()
        }
    }
    
}

extension CoreLocationProvider: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            locationContinuation?.resume(returning: WFLocation.moscow)
            return
        }
        
        CLGeocoder().reverseGeocodeLocation(location) { [weak self] placemarks, error in
            guard let self else { return }
            
            if let placemark = placemarks?.first {
                let wfLocation = WFPlacemarkMapper
                    .map(from: placemark, coordinate: location.coordinate)
                locationContinuation?.resume(returning: wfLocation)
            } else {
                locationContinuation?.resume(returning: WFLocation.moscow)
            }
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationContinuation?.resume(throwing: WFLocationError.unknown(error))
    }
}
