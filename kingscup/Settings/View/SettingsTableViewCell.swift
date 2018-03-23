//
//  SettingsTableViewCell.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 7/1/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with title: String, icon: UIImage) {
        self.iconImageView.image = icon
        self.titleLabel.text = title
    }
    
}
