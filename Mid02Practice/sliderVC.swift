//
//  ViewController.swift
//  Mid02Practice
//
//  Created by Mallela,Mamatha on 4/17/23.
//

import UIKit

class sliderVC: UIViewController {

    @IBOutlet weak var valueTF: UITextField!
    @IBOutlet weak var sliderView: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderView.minimumValue = 0
        sliderView.maximumValue = 10
        
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        let roundedValue = round(sender.value)
        sender.value = roundedValue
        self.valueTF.text = "\(sender.value)"
    }
    
}

