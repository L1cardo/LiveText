//
//  ViewController.swift
//  LiveText
//
//  Created by Licardo on 2019/11/1.
//  Copyright © 2019 Licardo. All rights reserved.
//

import Cocoa


// 1. add NSTextFieldDelegate to the main class
class ViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var text: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// 2. set NSTextField delegate to self
        text.delegate = self
        
    }

    override var representedObject: Any? {
        didSet {
    
        }
    }

// 3. use controlTextDidChange to monitor the textchange
    func controlTextDidChange(_ obj: Notification) {
        label.stringValue = text.stringValue
    }
}


