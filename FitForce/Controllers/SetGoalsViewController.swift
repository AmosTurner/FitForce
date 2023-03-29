//
//  SetGoalsViewController.swift
//  FitForce
//
//  Created by  on 2023-03-29.
//

import UIKit

class SetGoalsViewController: UIViewController {
    
    @IBOutlet var textViewBodyWeightGoal: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var message : String = ""
    @IBAction func saveBodyWeightGoal(sender: UIButton) {
        var bodyWeightGoal = textViewBodyWeightGoal.text!
        message = "Your goal of " + bodyWeightGoal + " lbs is saved"
        
        let alertbox = UIAlertController(title: "Goals Saved!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            (alert) in self.dismiss(animated: true, completion: nil)
        })
        
        alertbox.addAction(action)
        present(alertbox, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
