//
//  WeatherManager.swift
//  climate
//
//  Created by Subham Kumar on 24/02/24.
//

import Foundation

protocol WeatherDidUpdateDelegate{
    
    func weatherDidUpdate(weatherModel: WeatherModel)
    
}


struct WeatherManager{
    
    var delegate: WeatherDidUpdateDelegate?
    
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=ca64871116f473f54c510fcdac8d6af4&units=metric"
    
    func fetchWeather(cityName: String){
        
        let urlString = "\(weatherUrl)&q=\(cityName)"
        
        performRequest(urlString: urlString)
        
    }
    
    func fetchWeather(latitude: Double, longitude: Double){
        
        let urlString = "\(weatherUrl)&lat=\(latitude)&lon=\(longitude)"
        
        performRequest(urlString: urlString)
        
    }
    
    func performRequest(urlString: String){
        
        let url = URL(string: urlString)
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url!, completionHandler: handler(data:response:error:))
        
        task.resume()
        
    }
    
    func handler(data: Data?, response: URLResponse?, error: Error?){
        
        if error != nil {
            
            print(error!)
            
            return
            
        }
        
        else {
            
            if let safeData = data {
                
                let dataString = String(data: safeData, encoding: .utf8)
                
                print(dataString!)
                
                parseJson(data: safeData)
            }
            
        }
        
    }
    
    func parseJson(data: Data?){
        
        let decoder = JSONDecoder()
        
        do{
            let weather = try decoder.decode(WeatherData.self, from: data!)
            let cityName = weather.name
            
            let weatherModel = WeatherModel(name: weather.name, id: weather.weather[0].id, temp: weather.main.temp,visibility: weather.visibility, humidity: weather.main.humidity , temp_max: weather.main.temp_max, temp_min: weather.main.temp_min, temp_feels_like: weather.main.feels_like)
            
            print("Max temp is \(weather.main.temp_max)")
            
            print("City Name is \(cityName)")
            
            delegate?.weatherDidUpdate(weatherModel: weatherModel)
            
        }
        catch{
            
            print(error)
            
        }
    }

}
