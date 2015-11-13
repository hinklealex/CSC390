//
//  pickerExampleIC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 9/30/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class pickerExampleIC: WKInterfaceController
{
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
    })

    @IBOutlet var thePicker: WKInterfacePicker!
    var currSelectedIndex = 0
    let sides = [4,6,8,10,12,20,100]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var thePickerItems = [WKPickerItem]()
        let labelNames = ["d4","d6","d8","d10","d12","d20","d100"]
        
        for(var i = 0; i < labelNames.count; i++)
        {
        thePickerItems.append(WKPickerItem())
        thePickerItems[i].title =  labelNames[i]
        thePickerItems[i].contentImage = WKImage(imageName: labelNames[i] + ".jpg")
        thePickerItems[i].caption = labelNames[i]
        }
        
        self.thePicker.setItems(thePickerItems)
        
       
    }
    @IBAction func whichOneButtonPressed()
    {
       self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%Int32(self.sides[currSelectedIndex]+1))", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
    }
    @IBAction func pickerWasClicked(value: Int)
    {
        self.currSelectedIndex = value
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
