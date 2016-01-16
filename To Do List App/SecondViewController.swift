//
//  SecondViewController.swift
//  To Do List App
//
//  Created by Mehmet Ragıp Altuncu on 15/01/16.
//  Copyright © 2016 MehmetAltuncu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
    }


    @IBAction func addButtonPressed(sender: UIButton) {
        
        toDoList.append(textField.text!)
        textField.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

