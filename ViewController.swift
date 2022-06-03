//
//  ViewController.swift
//  BMI Calculation
//
//  Created by Furkan Ceylan on 1.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    let (lengthTextField, weighTextField, ageTextField, resultLabel, calcButton) = (UITextField(),UITextField(),UITextField(),UILabel(),UIButton())
    let (lengthLabel, weighLabel, ageLabel) = (UILabel(), UILabel(), UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        lengthLabel.text = "Length (cm) : "
        lengthLabel.textColor = .black
        lengthLabel.textAlignment = .left
        lengthLabel.frame = CGRect(x: (width * 0.2) - (width * 0.3/2), y: height * 0.1 - 17, width: width * 0.3, height: 34)
        view.addSubview(lengthLabel)
        
        lengthTextField.textColor = .black
        lengthTextField.placeholder = "Please enter your length"
        lengthTextField.keyboardType = .numberPad
        lengthTextField.backgroundColor = .white
        lengthTextField.borderStyle = UITextField.BorderStyle.line
        lengthTextField.textAlignment = .center
        lengthTextField.layer.cornerRadius = 10
        lengthTextField.frame = CGRect(x: (width * 0.65) - (width * 0.6 / 2), y: height * 0.1 - 17, width: width * 0.6, height: 34)
        view.addSubview(lengthTextField)
        
        weighLabel.text = "Weigh (kg) : "
        weighLabel.textColor = .black
        weighLabel.textAlignment = .left
        weighLabel.frame = CGRect(x: (width * 0.2) - (width * 0.3/2), y: height * 0.1 + (34) , width: width * 0.3, height: 34)
        view.addSubview(weighLabel)
        
        weighTextField.textColor = .black
        weighTextField.placeholder = "Please enter your weigh"
        weighTextField.keyboardType = .numberPad
        weighTextField.backgroundColor = .white
        weighTextField.borderStyle = UITextField.BorderStyle.line
        weighTextField.textAlignment = .center
        weighTextField.layer.cornerRadius = 10
        weighTextField.frame = CGRect(x: (width * 0.65) - (width * 0.6 / 2), y: height * 0.1 + 34, width: width * 0.6, height: 34)
        view.addSubview(weighTextField)
        
        ageLabel.text = "Age : "
        ageLabel.textColor = .black
        ageLabel.textAlignment = .left
        ageLabel.frame = CGRect(x: (width * 0.2) - (width * 0.3/2), y: height * 0.16 + (34), width: width * 0.3, height: 34)
        view.addSubview(ageLabel)
        
        ageTextField.textColor = .black
        ageTextField.placeholder = "Please enter your age"
        ageTextField.keyboardType = .numberPad
        ageTextField.backgroundColor = .white
        ageTextField.borderStyle = UITextField.BorderStyle.line
        ageTextField.textAlignment = .center
        ageTextField.layer.cornerRadius = 10
        ageTextField.frame = CGRect(x: (width * 0.65) - (width * 0.6 / 2), y: height * 0.16 + 34, width: width * 0.6, height: 34)
        view.addSubview(ageTextField)
        
        calcButton.setTitle("Calculate", for: UIControl.State.normal)
        calcButton.layer.cornerRadius = 4
        calcButton.setTitleColor(.systemBlue, for: UIControl.State.normal)
        calcButton.addTarget(self, action: #selector(calculate), for: UIControl.Event.touchUpInside)
        calcButton.frame = CGRect(x: width * 0.5 - width * 0.4 / 2, y: height * 0.25 + 22, width: width * 0.4, height: 24)
        view.addSubview(calcButton)
        
        resultLabel.text = "Result"
        resultLabel.textAlignment = .center
        resultLabel.textColor = .systemBlue
        resultLabel.lineBreakMode = .byWordWrapping
        resultLabel.numberOfLines = 4
        resultLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.4 - (height * 0.5 / 2), width: width * 0.8, height: height * 0.5)
        view.addSubview(resultLabel)
        
    }
    
    @objc func calculate(){
        
        if let lenght = Double(lengthTextField.text!){
            if let weigh = Double(weighTextField.text!){
                let lengthSwuare  = (lenght / 100) * (lenght / 100)
                let res = weigh / lengthSwuare
                if let age = (Int(ageTextField.text!)){
                    if age > 19 && age <= 24{
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven)) \n Recommended : 19-24 BMI."
                    }else if age > 24 && age <= 34{
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven)) \n Recommended : 20-25 BMI."
                    }else if age > 34 && age <= 44 {
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven)) \n Recommended : 21-26 BMI."
                    }else if age > 44 && age <= 54 {
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven)) \n Recommended : 22-27 BMI."
                    }else if age > 54 && age <= 64 {
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven)) \n Recommended : 23-28 BMI."
                    }else if age > 64{
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven)) \n Recommended : 24-29 BMI."
                    }else{
                        resultLabel.text = "Body mass index : \(Double(res).rounded(.toNearestOrEven))"
                    }
                }
                
            }
        }
        
        
    }

}

