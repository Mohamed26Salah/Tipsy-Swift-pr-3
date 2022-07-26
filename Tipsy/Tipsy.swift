//
//  Tipsy.swift
//  Tipsy
//
//  Created by Mohamed Salah on 24/07/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit
struct Tipsy{
 
    func calculateTip(price:Double,percent:Double,stepperValue:Int)->String{
//        let result = ((price * (percent)) + price)/Double(stepperValue)
        let result = price * (1.0+percent) / Double(stepperValue)
        return String(format: "%.2f", result)
    }
}
