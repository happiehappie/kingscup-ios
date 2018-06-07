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
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.pageControl.currentPageIndicatorTintColor = self.view.backgroundColor
        self.quickGuideStackView.addArrangedSubview(self.createLabel(with: "Yes, this is a drinking game.\nDoesn't have to be alcoholic.\n\nEveryone have your own\ndrinking cup and place a cup in\nthe middle to be the King's Cup."))
        self.quickGuideStackView.addArrangedSubview(self.createLabel(with: "Pick a person to start a game,\nselect a card and do what it says.\n\nThere is no escape!\nPass to the next person when you\nare done."))
        self.quickGuideStackView.addArrangedSubview(self.createLabel(with: "Draw a King from the deck,\nyou can choose any drinks \npour into the King's Cup.\n\nPerson with the last King will\nhave to finish the cup in one shot!\nCheers mate."))
    }
    
    func createLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }
    
}

extension QuickGuideViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        self.pageControl.currentPage = Int(round(scrollView.contentOffset.x / scrollView.frame.size.width))
    }
}
