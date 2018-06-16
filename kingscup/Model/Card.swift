//
//  Card.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 19/5/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class Card: NSObject {
    
    enum Rank: String {
        
        case ace = "A"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case ten = "10"
        case jack = "J"
        case queen = "Q"
        case king = "K"
        
        
    }
    
    enum Suit: String {
        case heart = "♥"
        case spade = "♠"
        case diamond = "♦"
        case club = "♣"
        
        var image: UIImage {
            switch self {
            case .spade:
                return R.image.spadePink()!
            case .heart:
                return R.image.heartPink()!
            case .club:
                return R.image.clubPink()!
            case .diamond:
                return R.image.diamondPink()!
            
            }
        }
        
        var darkImage: UIImage {
            switch self {
            case .spade:
                return R.image.spadeDark()!
            case .heart:
                return R.image.heartDark()!
            case .club:
                return R.image.clubDark()!
            case .diamond:
                return R.image.diamondDark()!
            }
        }
        
    }
    
    static let width: CGFloat = 100.0
    static let ratio: CGFloat = 1.4
    
    var rank: Rank!
    var suit: Suit!
    
    init(rank: Rank, suit: Suit) {
        self.suit = suit
        self.rank = rank
    }
    
}
