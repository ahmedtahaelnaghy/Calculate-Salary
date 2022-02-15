//
//  ViewController.swift
//  Calculate Salary
//
//  Created by Ahmed Taha on 15/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var salaryTextField: UITextField!
    
    @IBOutlet weak var salaryResultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        salaryResultLbl.text = "Enter Your Salary"
        
    }
    
//Calculate manager salary when press on manager button
    @IBAction func managerBtn(_ sender: Any) {
        
        let textField = salaryTextField.text!
        
        if textField.isEmpty {
           
            salaryResultLbl.text = "You should enter the salary first."
            
        }else {
            
            let managerSalary = Int(salaryTextField.text!)!
            let manger = Manager()
            salaryResultLbl.text = "Manager Salary is \(manger.getGalary(salary: managerSalary)) $"
            
        }
    }
        
//Calculate employee salary when press on employee button
    @IBAction func employeeBtn(_ sender: Any) {
        
        let textField = salaryTextField.text!

        if textField.isEmpty {
            
            salaryResultLbl.text = "You should enter the salary first."
            
        }else{
            
        let employeeSalary = Int(salaryTextField.text!)!
        let employee = Employee()
        salaryResultLbl.text = "Employee Salary is \(employee.getGalary(salary: employeeSalary)) $"
            
        }
    }
}

