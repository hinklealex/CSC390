//
//  UserHomepageVC.swift
//  DiceRoller
//
//  Created by Alex Hinkle on 11/23/15.
//  Copyright © 2015 Alex Hinkle. All rights reserved.
//

import UIKit
import WatchConnectivity
import Parse

class UserHomepageVC: UIViewController, WCSessionDelegate, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var theTableView: UITableView!
    var session : WCSession!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if WCSession.isSupported()
        {
            self.session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
        }
        
        //get the current rolls associated with this user
        let query = PFQuery(className:"Roll")
        query.whereKey("owner_id", equalTo: PhoneCore.currentUser)
        query.findObjectsInBackgroundWithBlock { (objects : [PFObject]?, error: NSError?) -> Void in
            if(objects != nil)
            {
                PhoneCore.theRowData = objects!
                self.theTableView.reloadData()
            }
            else
            {
                print("None Found")
            }
        }
        
        
    }
    
  
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
    {
        let theMessage = message["aRoll"]!
        let parts = theMessage.componentsSeparatedByString(" -> ")
        
        let roll = PFObject(className:"Roll")
        roll["owner_id"] = PhoneCore.currentUser
        roll["total"] = Int(parts[1])
        roll["details"] = parts[0]
        roll.saveInBackgroundWithBlock
            {
                (success: Bool, error: NSError?) -> Void in
                if (success) {
                    
                    
                    // The object has been saved.
                } else {
                    // There was a problem, check error.description
                }
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PhoneCore.theRowData.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! customRollCell
        
        // Configure the cell...
        
        //update this code to fill the labels with the proper values
        let qty = PhoneCore.theRowData[indexPath.row].valueForKey("total")!
        let details = PhoneCore.theRowData[indexPath.row].valueForKey("details")!
        
        cell.sidesLabel.text = "N/A"
        cell.qtyLabel.text = "\(qty)"
        cell.detailLabel.text = "\(details)"
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    
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