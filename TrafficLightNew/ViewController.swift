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
    
    private let trafficLightOn: CGFloat = 1
    private let trafficLightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        redTrafficLight.backgroundColor = UIColor(red: 1,
//                                                  green: 0,
//                                                  blue: 0,
//                                                  alpha: 0.4
//        )
//        yellowTrafficLight.backgroundColor = UIColor(red: 1,
//                                                     green: 1,
//                                                     blue: 0,
//                                                     alpha: 0.4
//        )
//        greenTrafficLight.backgroundColor = UIColor(red: 0,
//                                                    green: 1,
//                                                    blue: 0,
//                                                    alpha: 0.4
//        )
        redTrafficLight.alpha = trafficLightOff
        yellowTrafficLight.alpha = trafficLightOff
        greenTrafficLight.alpha = trafficLightOff
        
        redTrafficLight.layer.cornerRadius = 85
        yellowTrafficLight.layer.cornerRadius = 85
        greenTrafficLight.layer.cornerRadius = 85
        
        startButton.layer.cornerRadius = 10
        startButton.isHidden = false
        
    }

//    override func viewWillLayoutSubviews() {
//        <#code#>
//    }
    @IBAction func ChangeColorButton() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        if redTrafficLight.alpha == 1 {
            redTrafficLight.alpha = trafficLightOff
            yellowTrafficLight.alpha = trafficLightOn
        } else if yellowTrafficLight.alpha == 1 {
            yellowTrafficLight.alpha = trafficLightOff
            greenTrafficLight.alpha = trafficLightOn
        } else if greenTrafficLight.alpha == 1 {
            greenTrafficLight.alpha = trafficLightOff
            redTrafficLight.alpha = trafficLightOn
        } else {
            redTrafficLight.alpha = trafficLightOn
        }
    }
    
}

