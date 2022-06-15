//
//  JsonObject.swift
//  MyWeatherApp
//
//  Created by Nazlıcan Çay on 15.06.2022.
//

import Foundation

struct Weather: Codable {
    var current : Current?
    var hourly :[HourlyWeather]?
}

struct Current:Codable{
    var temp : Double?
    var pressure: Int?
    var windSpeed : Double?
    var weather:[WeatherStatus]
    
    enum CodingKeys: String,CodingKey{
        case temp
        case pressure
        case weather
        case windSpeed = "wind_speed"
    }
}

struct WeatherStatus:Codable {
    var description : String?
}

struct HourlyWeather: Codable {
    var dt: Int?
    var temp: Double?
}

