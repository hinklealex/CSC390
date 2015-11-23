//
//  LoginVC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 11/20/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import UIKit
import Parse

class LoginVC: UIViewController
{
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    
    override func viewWillAppear(animated: Bool)
    {
        self.usernameTF.becomeFirstResponder()
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject)
    {
        PFUser.logInWithUsernameInBackground(usernameTF.text!, password:passwordTF.text!) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                print("yay you rock")
                // Do stuff after successful login.
            } else {
                print("Boo you suck")
                // The login failed. Check error to see why.
            }
        }

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