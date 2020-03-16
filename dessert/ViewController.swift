//
//  ViewController.swift
//  dessert
//
//  Created by star on 2020/3/16.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CB300r: UILabel!
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var CBR500r: UILabel!
    
    @IBOutlet weak var CBR650r: UILabel!
    
    @IBOutlet weak var CBR1000r: UILabel!
    
    @IBOutlet weak var CB650r: UILabel!
    
    @IBOutlet weak var CB1000r: UILabel!
    var CB300rValue_1: Int = 0
    var CBR500rValue_2: Int = 0
    var CBR650rValue_3: Int = 0
    var CBR1000rValue_4: Int = 0
    var CB650rValue_5: Int = 0
    var CB1000rValue_6: Int = 0
    
    var cost_1 = 220000
    var cost_2 = 298000
    var cost_3 = 398000
    var cost_4 = 798000
    var cost_5 = 398000
    var cost_6 = 578000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CB300rStepper(_ sender: UIStepper) {
        CB300rValue_1 = Int(sender.value)
        CB300r.text = "\(CB300rValue_1)"
        totalcount()
    }
    
    @IBAction func CBR500rStepper(_ sender: UIStepper) {
        CBR500rValue_2 = Int(sender.value)
        CBR500r.text = "\(CBR500rValue_2)"
        totalcount()
    }
    
    @IBAction func CBR650rStepper(_ sender: UIStepper) {
        CBR650rValue_3 = Int(sender.value)
        CBR650r.text = "\(CBR650rValue_3)"
        totalcount()
    }
    @IBAction func CBR1000rStepper(_ sender: UIStepper) {
        CBR1000rValue_4 = Int(sender.value)
        CBR1000r.text = "\(CBR1000rValue_4)"
        totalcount()
    }
    @IBAction func CB650rStepper(_ sender: UIStepper) {
        CB650rValue_5 = Int(sender.value)
        CB650r.text = "\(CB650rValue_5)"
        totalcount()
    }
    @IBAction func CB1000rStepper(_ sender: UIStepper) {
        CB1000rValue_6 = Int(sender.value)
        CB1000r.text = "\(CB1000rValue_6)"
        totalcount()
    }
    
    func totalcount() {
       
        let price_1 = cost_1 * CB300rValue_1
        let price_2 = cost_2 * CBR500rValue_2
        let price_3 = cost_3 * CBR650rValue_3
        let price_4 = cost_4 * CBR1000rValue_4
        let price_5 = cost_5 * CB650rValue_5
        let price_6 = cost_6 * CB1000rValue_6
        let totalPrice = price_1 + price_2 + price_3 + price_4 + price_5 + price_6
        total.text = totalPrice.description
    }
}

