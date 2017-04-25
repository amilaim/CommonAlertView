//
//  ViewController.swift
//  CommonAlertView
//
//  Created by Amila Munasinghe on 4/25/17.
//  Copyright © 2017 Developer Insight. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AlertViewControllerDelegate {

    @IBOutlet weak var AlertViewResultTextOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ShowAlertAction(_ sender: Any) {
        
        let alert = AlertViewController.sharedInstance
        alert.delegate = self
        alert.SubmitAlertView(viewController: self,title: "Developer Insight", message: "Please enter any text value")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func SubmitAlertViewResult(textValue : String) {
        
        AlertViewResultTextOutlet.text = textValue
        
    }


}

