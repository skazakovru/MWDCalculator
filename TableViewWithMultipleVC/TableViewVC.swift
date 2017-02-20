//
//  TableViewVC.swift
//  TableViewWithMultipleVC
//
//  Created by Sergei Kazakov on 19/02/2017.
//  Copyright © 2017 Sergei Kazakov. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        names = ["First","Second","Third","Fourth","Fifth","Sixth","Seventh","Eights", "Nineth", "Tenth"]
        identities = ["A","B","C","D","E","F","G","H","I","J"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = names [indexPath.row]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)

    }
}