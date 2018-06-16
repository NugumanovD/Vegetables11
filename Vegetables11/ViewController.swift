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
    var vegetables = [Vegetable]()
    
    private var isButton = Bool()
    
    @IBOutlet private var button: UIButton!
    @IBOutlet private var tableView: UITableView!
    
    @IBAction func buttonSet(_ sender: UIButton) {
        isButton = !isButton
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        append()
        print(vegetables.count)
    }
    
    func colorForCell(index: Int) -> UIColor {
        let color = (CGFloat(index) / CGFloat(vegetables.count)) * 1.2
        return UIColor(red: -2.0, green: CGFloat(ColorScheme.complementary.hashValue), blue: color, alpha: 0.8)
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = colorForCell(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vegetables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifire = isButton ? CellIdentifiers.second : CellIdentifiers.first
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath) as! VegetableCell
        
        switch identifire {
        case CellIdentifiers.first:
            cell.setName(label: vegetables[indexPath.row])
            cell.configure(with: UIImage(named: vegetables[indexPath.row].imageVegeteable)!)
        case CellIdentifiers.second:
            cell.setName(label: vegetables[indexPath.row])
            cell.configure(with: UIImage(named: vegetables[indexPath.row].imageVegeteable)!)
            cell.setCalories(label: vegetables[indexPath.row])
            cell.setURL(label: vegetables[indexPath.row])
        default:
            fatalError()
        }
        
        button.backgroundColor = colorForCell(index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isButton {
            let url = URL(string: vegetables[indexPath.row].urlLabel)
            let vc = SFSafariViewController(url: url!)
            present(vc, animated: true, completion: nil)
        }
    }
    
    func append() {
        vegetables = [carrot, cabbage, potatoes, beets, onions, peas, cucumber, corn]
    }
}



