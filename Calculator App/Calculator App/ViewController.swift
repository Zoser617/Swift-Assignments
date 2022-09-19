//
//  ViewController.swift
//  Calculator App
//
//  Created by Zoser LeFranc on 8/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var mathOutput: UILabel!
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        mathOutput.text = "0"
        
    }
    @IBAction func miscellaneous(_ sender: Any) {
    }
    @IBAction func percentage(_ sender: Any) {
        function = "%"
        first = userInput
        userInput = ""
        
    }
    @IBAction func divide(_ sender: Any) {
        function = "/"
        first = userInput
        userInput = ""
    }
    @IBAction func multiply(_ sender: Any) {
        function = "*"
        first = userInput
        userInput = ""
        
    }
    @IBAction func subtract(_ sender: Any) {
        function = "-"
        first = userInput
        userInput = ""
        
    }
    @IBAction func addition(_ sender: Any) {
        function = "+"
        first = userInput
        userInput = ""
     
    }
    @IBAction func equals(_ sender: Any) {
        
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        if(function == "+") {
            result = firstInput + secondInput
            mathOutput.text = String(result)
    }
        else if(function == "-") {
            result = firstInput - secondInput
            mathOutput.text = String(result)
            
    }
        else if(function == "*") {
            result = firstInput * secondInput
            mathOutput.text = String(result)
            
    }
        else {
            result = firstInput / secondInput
            mathOutput.text = String(result)
        
    }
}
    @IBAction func decimal(_ sender: Any) {
        mathOutput.text = ""
        userInput += "."
        mathOutput.text! += userInput
        
    }
    @IBAction func zero(_ sender: Any) {
        mathOutput.text = ""
        userInput += "0"
        mathOutput.text! += userInput
    }
    @IBAction func one(_ sender: Any) {
        mathOutput.text = ""
        userInput += "1"
        mathOutput.text! += userInput
    }
    @IBAction func two(_ sender: Any) {
        mathOutput.text = ""
        userInput += "2"
        mathOutput.text! += userInput
        
    }
    @IBAction func three(_ sender: Any) {
        mathOutput.text = ""
        userInput += "3"
        mathOutput.text! += userInput
        
    }
    @IBAction func four(_ sender: Any) {
        mathOutput.text = ""
        userInput += "4"
        mathOutput.text! += userInput
        
    }
    @IBAction func five(_ sender: Any) {
        mathOutput.text = ""
        userInput += "5"
        mathOutput.text! += userInput
        
    }
    @IBAction func six(_ sender: Any) {
        mathOutput.text = ""
        userInput += "6"
        mathOutput.text! += userInput
        
    }
    @IBAction func seven(_ sender: Any) {
        mathOutput.text = ""
        userInput += "7"
        mathOutput.text! += userInput
        
    }
    @IBAction func eight(_ sender: Any) {
        mathOutput.text = ""
        userInput += "8"
        mathOutput.text! += userInput
        
    }
    @IBAction func nine(_ sender: Any) {
        mathOutput.text = ""
        userInput += "9"
        mathOutput.text! += userInput
        
    }
    

}

    
    
