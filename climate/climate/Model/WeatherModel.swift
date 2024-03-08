//
//  WeatherModel.swift
//  climate
//
//  Created by Subham Kumar on 25/02/24.
//

import Foundation

struct WeatherModel{
    
    var name: String
    var id: Int
    var temp: Double
    var visibility: Int
    
    var temperature: String{
        
        return String(format: "%.1f", temp)
        
    }

    
    var humidity: Int
    var temp_max: Double
    var temp_min: Double
    var temp_feels_like: Double
    
}
