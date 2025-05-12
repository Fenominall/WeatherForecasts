//
//  File.swift
//  WFCoreDomain
//
//  Created by Fenominall on 5/12/25.
//

import Foundation

public struct WeatherCondition {
    public let text: String
    public let iconUrl: String
    public let code: Int
    
    public init(
        text: String,
        iconUrl: String,
        code: Int
    ) {
        self.text = text
        self.iconUrl = iconUrl
        self.code = code
    }
}
