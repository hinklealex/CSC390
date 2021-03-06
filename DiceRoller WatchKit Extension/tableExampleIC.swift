//
//  tableExampleIC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 9/28/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import WatchKit
import Foundation

class tableExampleIC: WKInterfaceController
{
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
    })
    
    let sides = [4,6,8,10,12,10,100]
    
    
    @IBOutlet var theTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        let labelNames = ["d4","d6","d8","d10","d12","d20","d100"]
        self.theTable.setNumberOfRows(labelNames.count, withRowType: "cell")
        for( var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! diceRow
            currRow.theLabel.setText(labelNames[i])
            currRow.theImage.setImageNamed(labelNames[i] + ".jpg")
                
        }
        
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        //self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%Int32(self.sides[rowIndex]+1))", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
        
       
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