//
//  InterfaceController.swift
//  DiceRoller WatchKit Extension
//
//  Created by Alex Hinkle on 9/25/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
    })


    @IBAction func d00ButtonPRessed()
    {
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%100 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])

    }
    @IBAction func d20ButtonPressed()
    {
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%20 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])

    }
    @IBAction func d12ButtonPressed()
    {
        
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%12 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])

    }
    @IBAction func d10ButtonPressed()
    {
        
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%10 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])

    }
    @IBAction func d8ButtonPressed()
    {
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%8 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])

    }
    @IBAction func D6ButtonPressed()
    {
        
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%6 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])

    }
    @IBAction func Dd4ButtonCLicked()
    {
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%4 + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
        
        
        }
    }


        func awakeWithContext(context: AnyObject?) {
            
        // Configure interface objects here.
    }

    func willActivate() {
            }

   func didDeactivate() {
           }


