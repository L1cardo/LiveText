//
//  ViewController.swift
//  tvOS
//
//  Created by Licardo on 2019/11/1.
//  Copyright © 2019 Licardo. All rights reserved.
//

import UIKit

// 1. add UITextFieldDelegate to the main class
class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

// 2. set UITextField delegate to self
        text.delegate = self
       
    }

// 3. use textFieldDidChangeSelection to monitor the textchange
    func textFieldDidChangeSelection(_ textField: UITextField) {
        label.text = text.text
    }
}

