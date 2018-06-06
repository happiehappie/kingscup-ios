//
//  PlayCardView.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 19/5/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class PlayCardView: UIView {
    @IBOutlet weak var label: UILabel!
    var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    func xibSetup() {
        self.view = loadViewFromNib()
        
        self.view.frame = self.bounds
        
        self.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.addSubview(self.view)
    }
    
    func loadViewFromNib() -> UIView {
        return UINib(nibName: "PlayCardView", bundle: Bundle(for:type(of: self))).instantiate(withOwner: self, options: nil)[0] as! UIView
    }
}
