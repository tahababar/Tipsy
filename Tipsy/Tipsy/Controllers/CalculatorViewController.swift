//
//  ViewController.swift
//  Tipsy
//

//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.0;
    var bill = "0";
    
    @IBAction func tipChanged(_ sender: UIButton) {
       
        tip = 0.0;
       
        bill = billTextField.text!;
        
        var splitNumber = splitNumberLabel.text;
        
        sender.backgroundColor = UIColor.green;
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
            sender.backgroundColor = UIColor.clear;
        }
        
        if (sender.currentTitle == "0%")
        {   
            tip = (Double(bill))!/(Double(splitNumber ?? "error"))!;
            print(tip);
        }
        else if (sender.currentTitle == "10%")
        {
            var initial = ((Double(bill))!/(Double(splitNumber ?? "error"))!);
            var addTip = initial * 0.1;
            tip = initial + addTip;
            print(tip);
        }
        else if (sender.currentTitle == "20%")
        {
            var initial2 = ((Double(bill))!/(Double(splitNumber ?? "error"))!);
            var addTip2 = initial2 * 0.2;
            tip = initial2 + addTip2;
            print(tip);
        }
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value));
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToResults", sender: self);
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "goToResults") 
            {
                let destinationVC = segue.destination as! ResultsViewController;
                destinationVC.result = tip;  //we can now do this without even making objects of another class
        }
        
    }
  
}
