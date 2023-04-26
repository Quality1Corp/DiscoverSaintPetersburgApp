//
//  Place.swift
//  DiscoverSaintPetersburgApp
//
//  Created by MikhaiL on 26.04.2023.
//

struct Place {
    let name: String
    let location: String
    let type: String
    let image: String
    
    static let places = [
        "Государственный Эрмитаж",
        "Музей современного искусства АРТМУЗА",
        "Ботанический сад",
        "Парк имени 300-летия Санкт-Петербурга",
        "Академия А. Л. Штиглица",
        "Севкабель Порт"
    ]
    
    static func getPlaces() -> [Place] {
        
        var placesName: [Place] = []
        
        for place in places {
            placesName.append(Place(name: place, location: "Санкт-Петербург", type: "Место", image: place))
        }
        
        return placesName
    }
}
