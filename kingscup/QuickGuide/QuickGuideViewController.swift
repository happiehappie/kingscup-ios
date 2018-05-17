//
//  QuickGuideViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 24/3/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit
import SwifterSwift

class QuickGuideViewController: UIViewController {
        /*
    var firstPageLabel = UILabel()
    var secondPageLabel = UILabel()
    var thirdPageLabel = UILabel()
    */
    @IBOutlet weak var onboardingContainerView: UIView!
    @IBOutlet weak var quickGuideStackView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        
    }
    
    func setup() {
        let label = UILabel()
        label.text = "Yes, this is a drinking game.\nDoesn't have to be alcoholic.\n\nEveryone have your own\ndrinking cup and place a cup in\nthe middle to be the King's Cup."
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = UIColor.white
        let label2 = UILabel()
        label2.text = "Pick a person to start a game,\nselect a card and do what it says.\n\nThere is no escape!\nPass to the next person when you\nare done."
        label2.numberOfLines = 0
        label2.textAlignment = .center
        label2.textColor = UIColor.white
        let label3 = UILabel()
        label3.text = "Draw a King from the deck,\nyou can choose any drinks \npour into the King's Cup.\n\nPerson with the last King will\nhave to finish the cup in one shot!\nCheers mate."
        label3.numberOfLines = 0
        label3.textAlignment = .center
        label3.textColor = UIColor.white
        self.quickGuideStackView.addArrangedSubview(label)
        self.quickGuideStackView.addArrangedSubview(label2)
        self.quickGuideStackView.addArrangedSubview(label3)
    }
    
}

extension QuickGuideViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        self.pageControl.currentPage = Int(round(scrollView.contentOffset.x / scrollView.frame.size.width))
    }
}
