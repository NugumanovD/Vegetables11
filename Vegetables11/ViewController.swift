//
//  ViewController.swift
//  Vegetables11
//
//  Created by Nugumanov on 09.06.18.
//  Copyright © 2018 Nugumanov Dima. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var isButton = true
    @IBAction func buttonSet(_ sender: UIButton) {
        isButton = !isButton
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vegetablesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifire = isButton == true ? Cell.firstCell : Cell.secondCell
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath) as! VegetableCell
        
        switch identifire {
        case Cell.firstCell:
            cell.setName(label: vegetablesArray[indexPath.row])
            
            cell.configure(image: UIImage(named: vegetablesArray[indexPath.row].imageVegeteable)!)
        case Cell.secondCell:
            cell.setName(label: vegetablesArray[indexPath.row])
            cell.configure(image: UIImage(named: vegetablesArray[indexPath.row].imageVegeteable)!)
            cell.setCalories(label: vegetablesArray[indexPath.row])
            cell.setURL(label: vegetablesArray[indexPath.row])
        default:
            fatalError()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isButton == false {
            
            let url = URL(string: vegetablesArray[indexPath.row].url)
            let vc = SFSafariViewController(url: url!)
            present(vc, animated: true, completion: nil)
        } 
        
    }
    
    func buttonSettings() {
        button.tintColor = UIColor.brown
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}



