//
//  TableViewController.swift
//  Table App
//
//  Created by Aaron Dougher on 3/5/18.
//  Copyright © 2018 Erin Dougher. All rights reserved.
//

import UIKit

var myIndex = 0

class TableViewController: UITableViewController {


    // MARK: - Table view data source
    override func viewDidLoad() {
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titles.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = titles[indexPath.row]
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        cell.textLabel?.textAlignment = .center
        return cell
    }

     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

}
