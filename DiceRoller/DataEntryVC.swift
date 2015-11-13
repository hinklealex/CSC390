//
//  DataEntryVC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 11/11/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import UIKit

class DataEntryVC: UIViewController
{
    
    @IBOutlet weak var theTextfield: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theTextfield.becomeFirstResponder()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonPressed(sender: AnyObject)
    {
        PhoneCore.theRowData.append(self.theTextfield.text!)
        PhoneCore.theTV.reloadData()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}