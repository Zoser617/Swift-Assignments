//
//  ViewController.swift
//  SignUp
//
//  Created by Zoser LeFranc on 9/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var streetaddressLine1: UITextField!
    @IBOutlet weak var streetAddressLine2: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var region: UITextField!
    @IBOutlet weak var postalAndZipCode: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var dateOfBirthText: UITextField!
    @IBOutlet weak var sportsButton1: UIButton!
    @IBOutlet weak var sportsButton2: UIButton!
    @IBOutlet weak var sportsButton3: UIButton!
    @IBOutlet weak var sportsButton4: UIButton!
    @IBOutlet weak var termsOfServiceButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    
    // Country
    let countryChoices = ["United States of America", "Italy", "Canada", "Africa", "United Kingdom", "Jamaica", "Spain", "Brazil"]
    
    var pickerView = UIPickerView()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // rounded corners
        sportsButton1.layer.cornerRadius = 15
        sportsButton2.layer.cornerRadius = 15
        sportsButton3.layer.cornerRadius = 15
        sportsButton4.layer.cornerRadius = 15
        
        // country picker
        pickerView.delegate = self
        pickerView.dataSource = self
        
        country.inputView = pickerView
        country.textAlignment = .center
        
        // calendar icon
        let image = UIImage(named: "smallCalendar")
        addRightImage(txtField: dateOfBirthText, andImage: image!)
        
        // datepicker
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        
        dateOfBirthText.inputView = datePicker
        dateOfBirthText.text = formatDate(date: Date()) // present date
    
    }
    
    // date picker dropdown
    
    @objc func dateChange(datePicker: UIDatePicker) {
        
        dateOfBirthText.text = formatDate(date: datePicker.date)
        
    }
    
    func formatDate(date: Date) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd YYYY"
        return formatter.string(from: date)
    }
    
    // calendar icon
    
    func addRightImage(txtField:UITextField, andImage img:UIImage) {
        
        let rightImageView = UIImageView(frame:CGRect(x: 0.0, y: 0.0, width: 5, height: 5))
        rightImageView.image = img
        txtField.rightView = rightImageView
        txtField.rightViewMode = .always
        
    }
    
    // all fields filled
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
        
        
        if firstName.text == "" || lastName.text == "" || email.text == "" || phoneNumber.text == "" || streetaddressLine1.text == "" || streetAddressLine2.text == "" || city.text == "" || region.text == "" || postalAndZipCode.text == "" || country.text == "" || dateOfBirthText.text == "" {
            
            let alert = UIAlertController(title: "Alert!!!", message: "Please fill all the details", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Ok", style: .default)
            
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)
            
        
            }
        else {
            let alert = UIAlertController(title: "Complete!", message: "Data has been sent successfully", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Ok", style: .default)
            
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)
        }

    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryChoices.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { return countryChoices[row]
    }
    func pickerView(_ pickerview: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        country.text = countryChoices[row]
        country.resignFirstResponder()
    }
    
}

