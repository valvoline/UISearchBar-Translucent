//
//  ViewController.swift
//  UITranslucentSearchBar
//
//  Created by Costantino Pistagna on 08/02/2017.
//  Copyright © 2017 sofapps. All rights reserved.
//

import UIKit


class CustomTableViewCell: UITableViewCell {
    @IBOutlet var thumbImage: UIImageView!
    @IBOutlet var titleDescription: UILabel!
}

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aSearchBar = UISearchBar(frame: CGRect.zero, translucent: true)
        
        self.navigationItem.titleView = aSearchBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let aCell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier") as! CustomTableViewCell
        aCell.titleDescription.text = "Row: \(indexPath.row)"
        return aCell
    }

}

