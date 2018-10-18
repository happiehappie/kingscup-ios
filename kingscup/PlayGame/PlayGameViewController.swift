//
//  PlayGameViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 19/5/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit
import PopupDialog

class PlayGameViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var crownStackView: UIStackView!
    @IBOutlet weak var cupImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var cards = [Card]()
    var tauntMessages = ["Seriously", "Coming Up", "Just One More", "This Is It", "Don\'t Think", "Drink Me", "Faster Mate", "You Sure?", "Alright Buddy?", "Come On"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black
        self.collectionView.register(R.nib.playingCardCollectionViewCell(), forCellWithReuseIdentifier: R.reuseIdentifier.playingCardCell.identifier)
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.messageLabel.text = self.tauntMessages.randomElement()
        self.cupImageView.image = UIImage(named: "Cup\(self.crownStackView.arrangedSubviews.filter{$0.isHidden == false}.count)") ?? UIImage(named: "Cup1")
    }
    
    func setup() {
        for view in self.crownStackView.arrangedSubviews {
            view.isHidden = false
        }
        self.cards = []
        let ranks = [Card.Rank.ace, Card.Rank.two, Card.Rank.three, Card.Rank.four, Card.Rank.five, Card.Rank.six, Card.Rank.seven, Card.Rank.eight, Card.Rank.nine, Card.Rank.ten, Card.Rank.jack, Card.Rank.queen, Card.Rank.king]
        let suits = [Card.Suit.spade, Card.Suit.heart, Card.Suit.diamond, Card.Suit.club]
        for suit in suits {
            for rank in ranks {
                self.cards.append(Card(rank: rank, suit: suit))
            }
        }
        self.cupImageView.image = UIImage(named: "Cup4")
        self.messageLabel.text = self.tauntMessages.randomElement()
        self.cards = self.cards.shuffled()
        self.collectionView.reloadData()
    }
    
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
        
        let vc = PauseViewController(nibName: R.nib.pauseViewController.name, bundle: nil)
        vc.quitButtonAction = {
            self.dismiss(animated: true, completion: nil)
        }
        vc.replayButtonAction = {
            self.setup()
            vc.dismiss(animated: true, completion: nil)
        }
        
        let popup = PopupDialog(viewController: vc)
        
        self.present(popup, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.playGameViewController.gameCardSegue.identifier {
            let vc = segue.destination as! PlayingCardViewController
            vc.card = sender as? Card
        }
    }
    
}

extension PlayGameViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.cards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.playingCardCell.identifier, for: indexPath) as! PlayingCardCollectionViewCell
        
        cell.config(with: self.cards[indexPath.item])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (self.crownStackView.arrangedSubviews.filter{$0.isHidden == false}.count) > 0 {
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: R.segue.playGameViewController.gameCardSegue, sender: self.cards[indexPath.item])
                
                
                if self.cards[indexPath.item].rank == Card.Rank.king {
                    for view in self.crownStackView.arrangedSubviews {
                        if view.isHidden == false {
                            view.isHidden = true
                            break
                        }
                    }
                    
                }
                
                self.cards.remove(at: indexPath.item)
                collectionView.reloadData()
            }
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Card.width, height: Card.width * Card.ratio)
    }
}
