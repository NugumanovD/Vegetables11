//
//  ViewController.swift
//  Vegetables11
//
//  Created by Nugumanov on 09.06.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit
import SafariServices
import ChameleonFramework

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var isButton = Bool()
    
    @IBOutlet private var button: UIButton!
    @IBOutlet private var tableView: UITableView!
    
    @IBAction func buttonSet(_ sender: UIButton) {
        isButton = !isButton
        tableView.reloadData()
    }
    
    func colorForCell(index: Int) -> UIColor {
        let itemCount = vegetablesArray.count - 1
        let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        
        return UIColor(red: 1.0, green: color, blue: 0.0, alpha: 1.0)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = colorForCell(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vegetablesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifire = isButton ? CellIdentifiers.second : CellIdentifiers.first
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath) as! VegetableCell
        
        
        switch identifire {
        case CellIdentifiers.first:
            cell.setName(label: vegetablesArray[indexPath.row])
            cell.configure(with: (UIImage(named: vegetablesArray[indexPath.row].imageVegeteable))!)
        case CellIdentifiers.second:
            cell.setName(label: vegetablesArray[indexPath.row])
            cell.configure(with: UIImage(named: vegetablesArray[indexPath.row].imageVegeteable)!)
            cell.setCalories(label: vegetablesArray[indexPath.row])
            cell.setURL(label: vegetablesArray[indexPath.row])
        default:
            fatalError()
        }
        //random color change after click
        button.backgroundColor = UIColor.randomFlat()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isButton {
            let url = URL(string: vegetablesArray[indexPath.row].urlLabel)
            let vc = SFSafariViewController(url: url!)
            present(vc, animated: true, completion: nil)
        }
    }
}



