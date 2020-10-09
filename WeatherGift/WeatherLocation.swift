//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Sangha Lee on 10/6/20.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var latitude: Double
    var longitude: Double
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
}
