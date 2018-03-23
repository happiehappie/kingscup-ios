//
//  ViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 4/1/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }
    
    func setupView() {
        
        self.navigationItem.title = ""
        
        self.heartButton.layer.cornerRadius = self.heartButton.bounds.width / 2
        self.playButton.layer.cornerRadius = self.playButton.bounds.width / 2
        self.settingsButton.layer.cornerRadius = self.settingsButton.bounds.width / 2
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
    }
    
}

