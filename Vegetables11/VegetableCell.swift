//
//  VegetableCell.swift
//  Vegetables11
//
//  Created by Nugumanov on 09.06.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit

class VegetableCell: UITableViewCell {
    
    @IBOutlet weak var imageVegetable: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var numberOfCalories: UILabel!
    @IBOutlet private var url: UILabel!
    
    func configure(image: UIImage) {
        imageVegetable.image = image
    }
    
    func setName(label: Vegetable) {
        nameLabel.text = "Name: \(label.name)"
        
    }
    
    func setCalories(label: Vegetable) {
        numberOfCalories.text = "Calories: \(label.numberOfCalories)"
    }
    
    func setURL(label: Vegetable) {
        url.text = "Go to: \(label.url)"
    }
}
