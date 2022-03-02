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
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
    }

    @IBAction func changeLightButton() {
    }
    
}

