//
//  ViewController.swift
//  TrafficLights
//
//  Created by Алексей Зарудный on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        lightButton.layer.cornerRadius = 20
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func changeLightButton() {
        lightButton.setTitle("NEXT", for: .normal)
        if redLight.alpha != 1 && yellowLight.alpha != 1 && greenLight.alpha != 1 {
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else { yellowLight.alpha = 0.3
            redLight.alpha = 1
            greenLight.alpha = 0.3
        }
    }
}

