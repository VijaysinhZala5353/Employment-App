//
//  ViewController.swift
//  EmployementApp
//
//  Created by user213523 on 3/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var biWeeklySalary: UITextField!
    @IBOutlet weak var monthlySalary: UITextField!
    @IBOutlet weak var years: UITextField!
    @IBOutlet weak var highSchool: UIButton!
    @IBOutlet weak var diploma: UIButton!
    @IBOutlet weak var bachelors: UIButton!
    @IBOutlet weak var basicSalary: UITextField!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bachelors.isSelected = true
        basicSalary.text="75000"
    }

    @IBAction func findSalary(_ sender: UIButton) {
        let noOfYr = Int(years.text!)!
        var finalSalary = 0.0
        var monthly = 0.0
        var biweekly = 0.0
        if noOfYr>5
        {
            finalSalary = Double(String(basicSalary.text!))! * 0.1
        }
        
        else if noOfYr>3
        {
            finalSalary = Double(String(basicSalary.text!))! + 100.0
        }
        
        else
        {
            finalSalary = Double(String(basicSalary.text!))!
        }
        
        monthly = finalSalary/12
        biweekly = finalSalary/26
        
        monthlySalary.text = String(format: "%.2f", monthly)
        biWeeklySalary.text = String(format: "%.2f", biweekly)
    }
    
    @IBAction func qualification(_ sender: UIButton) {
        
        sender.isSelected=true
        if sender == bachelors
        {
            //if bachelor is selected, other will be unselect
            diploma.isSelected=false
            highSchool.isSelected=false
            basicSalary.text="75000"
        }
        else if sender == diploma
        {
            //if diploma is selected, other will be unselect
            bachelors.isSelected=false
            highSchool.isSelected=false
            basicSalary.text="65000"
        }
        else
        {
            //if high school is selected, other will be unselect
            bachelors.isSelected=false
            diploma.isSelected=false
            basicSalary.text="45000"
        }
    }
}
    
        
    

