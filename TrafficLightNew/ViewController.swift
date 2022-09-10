//
//  ViewController.swift
//  TrafficLightNew
//
//  Created by Владимир Кувикин on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.backgroundColor = UIColor(red: 1,
                                                  green: 0,
                                                  blue: 0,
                                                  alpha: 0.4
        )
        yellowTrafficLight.backgroundColor = UIColor(red: 1,
                                                     green: 1,
                                                     blue: 0,
                                                     alpha: 0.4
        )
        greenTrafficLight.backgroundColor = UIColor(red: 0,
                                                    green: 1,
                                                    blue: 0,
                                                    alpha: 0.4
        )
        
        redTrafficLight.layer.cornerRadius = 85
        yellowTrafficLight.layer.cornerRadius = 85
        greenTrafficLight.layer.cornerRadius = 85
        startButton.layer.cornerRadius = 10
        startButton.isHidden = false
        
    }

    @IBAction func ChangeColorButton() {
        if startButton.isHidden{
            startButton.setTitle("Start", for: .normal)
        } else {
            startButton.setTitle("Next", for: .normal)
        }
        
    }
    
}

