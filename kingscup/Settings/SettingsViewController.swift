//
//  SettingsViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 7/1/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.tableFooterView = UIView()
        self.tableView.register(R.nib.settingsTableViewCell(), forCellReuseIdentifier: R.reuseIdentifier.settingsCell.identifier)
    }

}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.settingsCell.identifier, for: indexPath) as! SettingsTableViewCell
        switch indexPath.row {
        case 0:
            cell.configure(with: "Quick Guide", icon: #imageLiteral(resourceName: "DiamondPink"))
        case 1:
            cell.configure(with: "Hearts and Kisses", icon: #imageLiteral(resourceName: "HeartPink"))
        case 2:
            cell.configure(with: "Tell a Drinking Buddy", icon: #imageLiteral(resourceName: "ClubPink"))
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
}
