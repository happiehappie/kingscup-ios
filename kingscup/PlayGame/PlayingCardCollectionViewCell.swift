//
//  PlayingCardCollectionViewCell.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 8/6/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class PlayingCardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 8
    }
    
    func config(with card: Card) {
        
        self.imageView.image = R.image.logoIcon()
        //self.titleLabel.text = "KING'S CUP"
        self.titleLabel.text = "\(card.suit.rawValue) \(card.rank.rawValue)"
    }
    
}
