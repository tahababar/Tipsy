//
//  ResultsViewController.swift
//  Tipsy
//

//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    var result = 0.0;
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsLabel.text = "Enjoy Paying!";
        totalLabel.text = String(format: "%.2f", result);
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil);
       
        
    }
    
}
