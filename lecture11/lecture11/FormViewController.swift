//
//  FormViewController.swift
//  lecture11
//
//  Created by naat minasiani on 10/05/2026.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let age = Int(sender.value)
        ageLabel.text = "ასაკი: \(age) წელი"
    }
    @IBAction func submitPressed(_ sender: UIButton) {
        resultLabel.text = "მონაცემები გაგზავნილია!"
        resultLabel.textColor = UIColor.systemGreen
        nameTextField.text = ""
        emailTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("resultLabel:", resultLabel as Any)
        print("submitButton:", submitButton as Any)
        print("nameTextField:", nameTextField as Any)
        
        resultLabel.text = ""
        ageSlider.minimumValue = 0
        ageSlider.maximumValue = 100
        ageLabel.text = "ასაკი: 0 წელი"
        submitButton.layer.cornerRadius = 12
        nameTextField.borderStyle = .roundedRect
        emailTextField.borderStyle = .roundedRect
    }
}
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

