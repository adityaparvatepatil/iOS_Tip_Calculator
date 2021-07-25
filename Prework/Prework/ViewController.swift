//
//  ViewController.swift
//  Prework
//
//  Created by Aditya Parvate Patil on 7/24/21.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var tipAmountLabel: UILabel!
    
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    

    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Extracting bill from input bill
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Assigning Tips
        let tipPercents = [0.15, 0.18, 0.20]
        
        //Calculating Tip
        let tip = bill*tipPercents[tipControl.selectedSegmentIndex]
        
        //Calculating Total
        let total = bill  + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    //
}

