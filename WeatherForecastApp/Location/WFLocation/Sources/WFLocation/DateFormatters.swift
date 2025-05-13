//
//  File.swift
//  WFLocation
//
//  Created by Fenominall on 5/13/25.
//

import Foundation

public enum WFDateFormatters {
    public static func iso8601WithFractionalSeconds() -> ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return formatter
    }
}
