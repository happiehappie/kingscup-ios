//
//  PauseViewController.swift
//  kingscup
//
//  Created by Jack Xiong Lim on 10/6/18.
//  Copyright © 2018 Jack Xiong Lim. All rights reserved.
//

import UIKit

class PauseViewController: UIViewController {
    
    var quitButtonAction: (()->Void)!
    var replayButtonAction: (()->Void)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func resumeButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func quitButtonTapped(_ sender: UIButton) {
        
        self.presentingViewController!.presentingViewController!.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func replayButtonTapped(_ sender: UIButton) {
        self.replayButtonAction()
    }
    
}
