//
//  MenuTableViewController.swift
//  poc-gradient-navigation
//
//  Created by Ricardo Yamaguchi on 12/04/18.
//  Copyright © 2018 Ricardo Yamaguchi. All rights reserved.
//

import UIKit

class MenuTableViewController: BaseViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    override var navigationBarColors: Array<UIColor> {
        get {
            return [UIColor.safetyOrange, UIColor.orangePeel]
        }
    }

}
