//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shofiqur Rahman on 5/27/18.
//  Copyright © 2018 Shofi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    @IBOutlet weak var share2: UILabel!
    @IBOutlet weak var share3: UILabel!
    @IBOutlet weak var share4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let percentages = [0.15, 0.2, 0.25]
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        share2.text = String(format: "$%.2f", total/2)
        share3.text = String(format: "$%.2f", total/3)
        share4.text = String(format: "$%.2f", total/4)
    }
    
}

