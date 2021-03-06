//
//  DiceSelectIC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 10/7/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class DiceSelectIC: WKInterfaceController {
    
    let sides = [4,6,8,10,12,10,100]
    
    @IBOutlet var theTable: WKInterfaceTable!
    



    override func awakeWithContext(context: AnyObject?)
    {
        
        super.awakeWithContext(context)
        print(DiceRollerMain.numSides)
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
            
            DiceRollerMain.numSides = self.sides[rowIndex]
            self.pushControllerWithName("QuantitySelectScreenIC", context: "")
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
