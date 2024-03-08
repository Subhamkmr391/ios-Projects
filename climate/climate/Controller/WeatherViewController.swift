//
//  ViewController.swift
//  climate
//
//  Created by Subham Kumar on 24/02/24.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {

    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var lowLabel: UILabel!
  
    @IBOutlet weak var visionLabel: UILabel!
    
    @IBOutlet weak var highLabel: UILabel!
    @IBOutlet weak var feels_like_label: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    var locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        searchTextField.delegate = self
        weatherManager.delegate = self
        
    }

    
    @IBAction func locationPressed(_ sender: UIButton) {
        
        locationManager.startUpdatingLocation()
        
    }
    
}

extension WeatherViewController: UITextFieldDelegate{
    
    @IBAction func searchPressed(_ sender: UIButton) {
        
        searchTextField.endEditing(true)
        print(searchTextField.text!)

        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if searchTextField.text != ""{
            
            return true
        }
        
        else {
            
            searchTextField.placeholder = "Please enter a location"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        weatherManager.fetchWeather(cityName: searchTextField.text!)
        
        textField.text = ""
        textField.placeholder = "Search Location"
        
    }
    
}

extension WeatherViewController: WeatherDidUpdateDelegate{
    
    func weatherDidUpdate(weatherModel: WeatherModel ) {
        
//        print("City name in viewCOntroller is \(weatherData.name)")

        DispatchQueue.main.async {
            
            self.cityLabel.text = weatherModel.name
            self.temperatureLabel.text = String(format: "%.1f", weatherModel.temp)
            
            self.feels_like_label.text = String(format: "%.1f", weatherModel.temp_feels_like)
            self.highLabel.text = String(format: "%.1f", weatherModel.temp_max)
            self.lowLabel.text = String(format: "%.1f", weatherModel.temp_min)
            self.humidityLabel.text = String(weatherModel.humidity)
            self.visionLabel.text = String(weatherModel.visibility)
            
        }
    }
}

extension WeatherViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        if let location = locations.last{
            
            locationManager.stopUpdatingLocation()
            
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            
            print("Latitude is \(lat) and Longitude is \(lon)")
            
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
            
        }
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
}

    
  
