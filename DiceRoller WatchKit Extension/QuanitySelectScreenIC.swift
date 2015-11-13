//
//  QuanitySelectScreenIC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 10/7/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class QuanitySelectScreenIC: WKInterfaceController {
    @IBOutlet var thePicker: WKInterfacePicker!


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var thePickerItems = [WKPickerItem]()
        for(var i = 1; i <= 100; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i-1].title =  "\(i)"
            
        }
        
        self.thePicker.setItems(thePickerItems)
        

        
       
    }
    @IBAction func pickerDidChange(value: Int)
    {
        DiceRollerMain.numDice = value + 1
    }
    @IBAction func selectNameButtonPressed()
    {
        let suggestions = ["attack","intiative","damage"]
        self.presentTextInputControllerWithSuggestions(suggestions , allowedInputMode: WKTextInputMode.Plain) { (vals) -> Void in
            DiceRollerMain.currName = vals![0] as! String
            DiceRollerMain.hasDice = true
            self.popToRootController()
        }
       
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
