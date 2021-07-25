//
//  ViewController.swift
//  Prework
//
//  Created by Aditya Parvate Patil on 7/24/21.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Extracting bill from input bill
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercents = [0.15, 0.18, 0.20]
        
        let tip = bill*tipPercents[tipControl.selectedSegmentIndex]
        let total = bill  + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

