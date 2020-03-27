//
//  TableViewController.swift
//  SwipableTableViewCells
//
//  Created by Matt Minkevich on 3/27/20.
//  Copyright © 2020 Verso Development. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    fileprivate let cellId = "cellId"
    fileprivate let personalities: [Person] = [
        Person(fullName: "Steeve Jobs", jobTitle: "Apple founder"),
        Person(fullName: "Donald Trump", jobTitle: "President"),
        Person(fullName: "Gordon Ramsey", jobTitle: "Cook"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personalities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomTableViewCell
        cell.person = personalities[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
