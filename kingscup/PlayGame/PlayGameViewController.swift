//
//  PlayGameViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 19/5/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class PlayGameViewController: UIViewController {
    
    var cards = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black
        self.setup()
    }
    
    
    func setup() {
        self.cards = []
        let ranks = [Card.Rank.ace, Card.Rank.two, Card.Rank.three, Card.Rank.four, Card.Rank.five, Card.Rank.six, Card.Rank.seven, Card.Rank.eight, Card.Rank.nine, Card.Rank.ten, Card.Rank.jack, Card.Rank.queen, Card.Rank.king]
        let suits = [Card.Suit.spade, Card.Suit.heart, Card.Suit.diamond, Card.Suit.club]
        for suit in suits {
            for rank in ranks {
                self.cards.append(Card(rank: rank, suit: suit))
            }
        }
        self.cards = self.cards.shuffled()
    }
    
}
