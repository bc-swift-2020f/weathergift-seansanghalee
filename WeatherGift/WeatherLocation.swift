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
    
    func getData() {
        let urlString = "https://api.openweathermap.org/data/2.5/onecall?lat=\(latitude)&lon=\(longitude)&units=imperial&exclude=minutely&appid=\(APIkeys.openWeatherKey)"
        //let urlString = "https://pokeapi.co/api/v2/pokemon"
        
        print("We are accessing the url")
        
        guard let url = URL(string: urlString) else {
            print("ERROR: Could not create a URL")
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("ERROR: \(error.localizedDescription)")
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
                print("\(json)")
            } catch {
                print("JSON ERROR")
            }
        }
        
        task.resume()
    }
}
