//
//  UserHomepageVC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 11/23/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import UIKit

class UserHomepageVC: UIViewController {
    
    @IBOutlet weak var userIDLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
         self.userIDLabel.text = LoginVC.useridlabeltext
        // Do any additional setup after loading the view.
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