//
//  ViewController.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 9/25/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate
{
    

    @IBOutlet weak var theLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theLabel.text = ""
        if WCSession.isSupported()
        {
            let session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
            
        }
        
                
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func session(session: WCSession, didRecieveApplicationContext applicationContext: [String : AnyObject])
    {
        print("did recieve message \(applicationContext["blah1"])")
    }
    
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
    {

        //self.theLabel.text = "\(self.theLabel.text!)\(message["blah"]!)"
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            self.theLabel.text = "\(self.theLabel.text!)\(message)"
            print(message)
            
        }
        
        print("recieved message")
        replyHandler(["theReply":"Woot"])
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

