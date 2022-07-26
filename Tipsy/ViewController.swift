//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Price: UITextField!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var zeroPercent: UIButton!
    @IBOutlet weak var tenPercent: UIButton!
    @IBOutlet weak var twentyPercent: UIButton!
    var Tip : Double?
    var TipString : String?
    var stepper : Int?
    var result : String?
    let tipsy = Tipsy()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipSelected(_ sender: UIButton) {
        zeroPercent.isSelected = false
        tenPercent.isSelected = false
        twentyPercent.isSelected = false
        sender.isSelected = true
        if sender.currentTitle! == "0%" {
            Tip = 0.0
            TipString = "0%"
        }
        else if sender.currentTitle! == "10%"{
            Tip = 0.1
            TipString = "10%"
        }else{
            Tip = 0.0
            TipString = "20%"

        }
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        stepperLabel.text = String(format: "%.0f", sender.value)
        stepper = Int(sender.value)
    }
    @IBAction func calculate(_ sender: UIButton) {
        let bill = Double(Price.text ?? "0.0")
       
        result = tipsy.calculateTip(price: bill ?? 0.0, percent: Tip ?? 0.1, stepperValue: stepper ?? 2)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.Tip = TipString ?? "10%"
            destinationVC.Price = result
            destinationVC.persons = stepper ?? 2
     
    }
}
}

