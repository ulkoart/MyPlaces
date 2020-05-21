//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by user on 21.05.2020.
//  Copyright © 2020 ulkoart. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaruansNames:Array<String> = [
        "Мясоlove", "Кафе Винсент", "Станъ",
        "Диканька", "Пушкинист", "Ресторан \"Барин\"",
        "Камелот", "Bellini"
    ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
//        for place in restaruansNames {
//            places.append(Place(name: place, location: "Краснодар", type: "Ресторан", image: place))
//        }
        
        restaruansNames.forEach {
            places.append(Place(name: $0, location: "Краснодар", type: "Ресторан", image: $0))
        }
        
        return places
    }
    
}
