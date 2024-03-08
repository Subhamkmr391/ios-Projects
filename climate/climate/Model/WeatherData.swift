//
//  WeatherData.swift
//  climate
//
//  Created by Subham Kumar on 25/02/24.
//

import Foundation

struct WeatherData: Decodable{
    
    let name: String
    let main: Main
    let weather: [Weather]
    let wind: Wind
    let visibility: Int
}

struct Main: Decodable {
    
    let temp: Double
    let humidity: Int
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    
}

struct Weather: Decodable{
    
    let id: Int
    let description: String
    let icon: String
    
}

struct Wind: Decodable{
    
    let speed: Double
    
}


