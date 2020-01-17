//
//  ViewController.swift
//  ButtonsEffect
//
//  Created by Furkan Kahraman on 17.01.2020.
//  Copyright © 2020 Furkan Kahraman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Click(_ sender: UIButton) {
        sender.pulsate()
    }
    @IBAction func button2Effect(_ sender: UIButton) {
        sender.flash()
    }
    @IBAction func button3Click(_ sender: UIButton) {
        let colorAnimation = CABasicAnimation(keyPath: "backgroundColor")
        colorAnimation.fromValue = UIColor.red.cgColor
        colorAnimation.duration = 1  // animation duration
        // colorAnimation.autoreverses = true // optional in my case
        // colorAnimation.repeatCount = FLT_MAX // optional in my case
        sender.layer.add(colorAnimation, forKey: "ColorPulse")
    }
    
}

