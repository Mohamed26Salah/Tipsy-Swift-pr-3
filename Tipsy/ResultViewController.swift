//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mohamed Salah on 24/07/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var Tip : String?
    var Price : String?
    var persons : Int?
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var Result2: UILabel!
    @IBOutlet weak var someView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Result.text = Price
        Result2.text = "Split between \(persons!) people, with \(Tip!) tip."
        
    }
    

    @IBAction func Recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
