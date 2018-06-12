//
//  Vegetable.swift
//  Vegetables11
//
//  Created by Nugumanov on 09.06.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import Foundation

enum Cell {
    static let firstCell = "firstCell"
    static let secondCell = "secondCell"
}


struct Vegetable {
   
    var name: String
    var numberOfCalories: String
    var url: String
    var imageVegeteable: String
    
}

let carrot = Vegetable(name: "Carrot", numberOfCalories: "41 cal. / 100 gr.", url: "https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D1%80%D0%BA%D0%BE%D0%B2%D1%8C_%D0%BF%D0%BE%D1%81%D0%B5%D0%B2%D0%BD%D0%B0%D1%8F", imageVegeteable: "carrot")

let potatoes = Vegetable(name: "Potatoes", numberOfCalories: "47 cal. / 100 gr.", url: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C" , imageVegeteable: "potatoes")


var vegetablesArray: [Vegetable] = [carrot, potatoes]
