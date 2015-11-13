//
//  DiceRollerMain.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 10/7/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import WatchKit

class DiceRollerMain: NSObject
{
    static var numSides = 0
    static var numDice = 1
    static var currName = ""
    static var theRolls = [Roll]()
    static var hasDice = false
    
    
    static func resetValues()
    {
        numSides = 0
        numDice = 1
         currName = ""
        hasDice = false
       
    }
    
    
}
