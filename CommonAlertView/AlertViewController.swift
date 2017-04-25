//
//  AlertViewController.swift
//  CommonAlertView
//
//  Created by Amila Munasinghe on 4/26/17.
//  Copyright © 2017 Developer Insight. All rights reserved.
//


import UIKit

protocol AlertViewControllerDelegate {
    func SubmitAlertViewResult(textValue : String)
}

class AlertViewController {
    
    static let sharedInstance = AlertViewController()
    
    private init(){}
    
    var delegate : AlertViewControllerDelegate?
    
    func SubmitAlertView(viewController : UIViewController,title : String, message : String){
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        // Submit button
        let submitAction = UIAlertAction(title: "Submit", style: .default, handler: { (action) -> Void in
            // Get 1st TextField's text
            let textField = alert.textFields![0]
            
            if(textField.text != "")
            {
                self.delegate?.SubmitAlertViewResult(textValue: textField.text!)
            }
            
        })
        
        // Cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
        
        
        // Add 1 textField and cutomize it
        alert.addTextField { (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "enter any text value"
            textField.clearButtonMode = .whileEditing
            
        }
        
        // Add action buttons and present the Alert
        alert.addAction(submitAction)
        alert.addAction(cancel)
        viewController.present(alert, animated: true, completion: nil)
        
    }
    
}
