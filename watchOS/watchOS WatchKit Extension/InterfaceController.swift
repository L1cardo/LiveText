//
//  InterfaceController.swift
//  watchOS WatchKit Extension
//
//  Created by Licardo on 2019/11/1.
//  Copyright © 2019 Licardo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var label: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
// 1. just ues the textfield func
    @IBAction func text(_ value: NSString?) {
        let value = value as String?
        label.setText(value)
    }

}
