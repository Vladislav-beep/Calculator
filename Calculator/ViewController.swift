//
//  ViewController.swift
//  Calculator
//
//  Created by Владислав Сизонов on 29.08.2021.
//

import UIKit




class ViewController: UIViewController {

    var mathSighn = false
    var numberFromScreen = 0.0
    var firstNumber = 0.0
    var operation = 0
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        if mathSighn {
            label.text = String(sender.tag)
            mathSighn = false
        } else {
            label.text = label.text! +
                String(sender.tag)
        }
        
        numberFromScreen = Double(label.text!)!
    }
    
    
    
    @IBAction func sighButtonPressed(_ sender: UIButton) {
        mathSighn = true
        
        if !label.text!.isEmpty && sender.tag != 10 && sender.tag != 15 {
            firstNumber = Double(label.text!)!
        
        if sender.tag == 11 {
            label.text = "/"
        } else if sender.tag == 12 {
            label.text = "x"
        } else if sender.tag == 13 {
            label.text = "-"
        } else if sender.tag == 14 {
            label.text = "+"
        }
            operation = sender.tag
        }
        else if sender.tag == 15 {
            if operation == 11 {
                label.text = String(firstNumber / numberFromScreen)
            } else if operation == 12 {
                label.text = String(firstNumber * numberFromScreen)
            } else if operation == 13 {
                label.text = String(firstNumber - numberFromScreen)
            } else if operation == 14 {
                label.text = String(firstNumber + numberFromScreen)
            }
            
        } else if sender.tag == 10 {
            label.text = ""
            firstNumber = 0
            numberFromScreen = 0
            operation = 0
        }
        
    }
}


