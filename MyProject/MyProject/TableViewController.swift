//
//  TableViewController.swift
//  MyProject
//
//  Created by Antoine DAUGUET on 09/05/2018.
//  Copyright © 2018 Antoine DAUGUET. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var animals: [String] = ["Chien", "Chat", "Tortue"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
}
