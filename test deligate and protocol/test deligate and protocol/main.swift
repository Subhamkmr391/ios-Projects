//
//  main.swift
//  test deligate and protocol
//
//  Created by Subham Kumar on 22/02/24.
//

import Foundation

protocol  WeatherManagerDeligate{
    func didUpdateWeather(weather: WeatherModel)
    
}

struct WeatherManager {
    
    
    var deligate: WeatherManagerDeligate
    
    let weather = WeatherModel()
    
    func executeFunc(){
        
        deligate.didUpdateWeather(weather: weather)
        
    }
    
}


class WeatherView: WeatherManagerDeligate {
    
    var weatherManager = WeatherManager(del)
    
    
    func didUpdateWeather(weather: WeatherModel) {
        <#code#>
    }
    
}

