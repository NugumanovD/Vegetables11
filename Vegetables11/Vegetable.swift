//
//  Vegetable.swift
//  Vegetables11
//
//  Created by Nugumanov on 09.06.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import Foundation




struct Vegetable {
    
    let name: String
    let numberOfCalories: String
    let urlLabel: String
    let imageVegeteable: String
    
}

    
let carrot = Vegetable(name: "Carrot", numberOfCalories: "41 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D1%80%D0%BA%D0%BE%D0%B2%D1%8C_%D0%BF%D0%BE%D1%81%D0%B5%D0%B2%D0%BD%D0%B0%D1%8F", imageVegeteable: "carrot")
    
let potatoes = Vegetable(name: "Potatoes", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "potatoes")

let beets = Vegetable(name: "Beets", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "beets")

let onions = Vegetable(name: "onions", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "onions")

let peas = Vegetable(name: "Peas", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "peas")

let cabbage = Vegetable(name: "Cabbage", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "cabbage")

let cucumber = Vegetable(name: "Cucumber", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "cucumber")
    
let corn = Vegetable(name: "Corn", numberOfCalories: "47 cal. / 100 gr.", urlLabel: "https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D1%82%D0%BE%D1%84%D0%B5%D0%BB%D1%8C", imageVegeteable: "corn")



let vegetablesArray: [Vegetable] = [carrot, potatoes, beets, onions, peas, cabbage/*, cucumber, corn*/]

