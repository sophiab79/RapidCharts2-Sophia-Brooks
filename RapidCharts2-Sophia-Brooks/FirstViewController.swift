//
//  FirstViewController.swift
//  RapidCharts2-Sophia-Brooks
//
//  Created by Sophia on 12/13/20.
//  Copyright © 2020 Sophia. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBOutlet weak var unitNumberTextField: UITextField!
    
    
    @IBOutlet weak var patientNameTextField: UITextField!
    
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    
    
    @IBOutlet weak var sexTextField: UITextField!
    
    
    
    @IBOutlet weak var bloodPressureTextField: UITextField!
    
    
    @IBOutlet weak var heartRateTextField: UITextField!
    
    
    @IBOutlet weak var oxygenLevelTextField: UITextField!
    
    
    @IBOutlet weak var temperatureTextField: UITextField!
    
    @IBOutlet weak var hospitalLocationPicker: UIPickerView!
    
    let hospitalLocationPickerData =
        ["Kaiser Permanent-Redwood City", "Kaiser Permanente-South San Francisco", "Mills-Peninsula-Burlingame", "Mills-Peninsula-San Mateo", "Sequoia Hospital", "San Mateo Medical Center", "Seton"]
   
    
    
    @IBOutlet weak var chiefComplaintTextField: UITextField!
    
    
    @IBOutlet weak var narrativeTextField: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        unitNumberTextField.delegate = self
        patientNameTextField.delegate = self
        dateOfBirthTextField.delegate = self
        sexTextField.delegate = self
        bloodPressureTextField.delegate = self
        heartRateTextField.delegate = self
        oxygenLevelTextField.delegate = self
        temperatureTextField.delegate = self
        chiefComplaintTextField.delegate = self
        narrativeTextField.delegate = self
        
        
        
        
    }

    @IBAction func enterButtonPressed(_ sender: Any) {
        
        dataTextView.text = "Unit Number:  \(unitNumberTextField.text!) \nPatient Name:  \(patientNameTextField.text!)\nDate of Birth: \(dateOfBirthTextField.text!)\nSex: \(sexTextField.text!)\nBlood Pressure: \(bloodPressureTextField.text!)\nHeart Rate: \(heartRateTextField.text!)\nSp02: \(oxygenLevelTextField.text!)\nTemperature: \(temperatureTextField.text!)\nChief Complaint: \(chiefComplaintTextField.text!)\nNarrative: \(narrativeTextField.text!)"
       
        
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unitNumberTextField.resignFirstResponder()
    }
    
    
    }
    
extension FirstViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
    


