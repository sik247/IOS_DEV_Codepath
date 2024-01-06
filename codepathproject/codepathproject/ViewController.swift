//
//  ViewController.swift
//  work
//
//  Created by Harry Kang on 1/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var firstnameTxt: UITextField!
    @IBOutlet weak var lName: UILabel!
    @IBOutlet weak var lastNameTxt: UITextField!
    @IBOutlet weak var sName: UIView!
    
    
    @IBOutlet weak var schoolLogo: UIImageView!
    @IBOutlet weak var schoolTxt: UITextField!
    @IBOutlet weak var stepper:UIStepper!
    @IBOutlet weak var petsLabel: UILabel!
    @IBOutlet weak var numofpetslbl: UILabel!
    @IBOutlet weak var year: UISegmentedControl!
    @IBOutlet weak var petSwitch: UISwitch!
    @IBOutlet weak var morePets: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }

 
    @IBAction func stepper(_ sender:UIStepper) {
        let maxStepperValue = petSwitch.isOn ? Double.infinity : 4.0
        sender.maximumValue = maxStepperValue
        numofpetslbl.text = "\(Int(sender.value))"

    }
    @IBAction func btn(_ sender: UIButton) {
        let grade = year.titleForSegment(at: year.selectedSegmentIndex)
               
            
        let introduction = "My name is \(firstnameTxt.text!) \(lastNameTxt.text!) and I attend\(schoolTxt.text!)I am currently in my \(grade!) year and I own\(numofpetslbl.text!) dogs It is \(petSwitch.isOn) that I want more pets."
               
        print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
    }

}


