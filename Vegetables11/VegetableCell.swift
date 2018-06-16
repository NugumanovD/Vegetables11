//
//  VegetableCell.swift
//  Vegetables11
//
//  Created by Nugumanov on 09.06.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit
import ChameleonFramework

enum CellIdentifiers {
    
    static let first = "firstCell"
    static let second = "secondCell"
}

class VegetableCell: UITableViewCell {
    var vegetables = [Vegetable]()
    @IBOutlet private var imageVegetable: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var numberOfCalories: UILabel!
    @IBOutlet private var urlLabel: UILabel!
    
    func configure(with vegetable: UIImage) {
        imageVegetable.image = vegetable
    }
    
    func setName(label: Vegetable) {
        nameLabel.text = "Name: \(label.name)"
    }
    
    func setCalories(label: Vegetable) {
        numberOfCalories.text = "Calories: \(label.numberOfCalories)"
    }
    
    func setURL(label: Vegetable) {
        urlLabel.text = "Go to: \(label.urlLabel)"
    }
    
}

