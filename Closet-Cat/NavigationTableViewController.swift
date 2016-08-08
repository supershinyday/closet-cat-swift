//
//  NavigationTableViewController.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/4/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

class NavigationTableViewController: UITableViewController {
    
    var navigation = ["Home", "Input New Item", "Make Outfit", "My Closet", "My Outfits", "Calender"]
    var navImages = ["Home-icon", "hanger-icon", "mannequin-icon", "T-shirt-icon", "dress-icon", "calendar-icon"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: CGRectZero)

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:
            .Plain, target: nil, action: nil)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return navigation.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! NavTableViewCell

        // Configure the cell...
        
        cell.titleLabel.text = navigation[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: navImages[indexPath.row])
        

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("home", sender: self)
        } else if indexPath.row == 1 {
            self.performSegueWithIdentifier("inputNewItem", sender: self)
        } //else if indexPath.row == 2 {
            //self.performSegueWithIdentifier("showDetail2", sender: self) }
         else if indexPath.row == 3 {
            self.performSegueWithIdentifier("myCloset", sender: self)
        } else if indexPath.row == 4 {
            self.performSegueWithIdentifier("myOutfits", sender: self)
        } //else if indexPath.row == 5 {
            //self.performSegueWithIdentifier("showDetail2", sender: self) }
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    
    

}





