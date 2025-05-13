//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/13/25.
//

import Foundation

public protocol LocationProvider {
    func getCurrentLocation() async throws -> WFLocation
}
