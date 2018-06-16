//
//  PlayingCardViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 8/6/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit
import SwifterSwift

class PlayingCardViewController: UIViewController {
    
    var card: Card!
    @IBOutlet weak var mainSuitImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var topLeftRankLabel: UILabel!
    @IBOutlet weak var topleftSuitImageView: UIImageView!
    @IBOutlet weak var bottomRightSuitImageView: UIImageView!
    @IBOutlet weak var bottomRightRankLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setup()
    }
    
    func setup() {
        
        self.bottomRightSuitImageView.rotate(byAngle: 180.0, ofType: .degrees)
        self.bottomRightRankLabel.rotate(byAngle: 180.0, ofType: .degrees)
        self.mainSuitImageView.image = self.card.suit.image
        self.topleftSuitImageView.image = self.mainSuitImageView.image
        self.topLeftRankLabel.text = self.card.rank.rawValue
        self.bottomRightSuitImageView.image = self.card.suit.darkImage
        self.bottomRightRankLabel.text = self.card.rank.rawValue
    }
    
    @IBAction func checkedButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
