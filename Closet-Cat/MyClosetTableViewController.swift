//
//  MyClosetTableViewController.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/4/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

class MyClosetTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView(frame: CGRectZero)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        let button = UIButton()
        button.frame = CGRectMake(0, 0, 31, 31) //won't work if you don't set frame
        button.setImage(UIImage(named: "menu-icon"), forState: .Normal)
        button.addTarget(self, action: #selector(HomePageViewController.menuButtonPressed), forControlEvents: .TouchUpInside)
        
        let barButton = UIBarButtonItem()
        barButton.customView = button
        self.navigationItem.leftBarButtonItem = barButton
        
        
        // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Category", style:
            .Plain, target: nil, action: nil)
        
        //lighter pink
        view.backgroundColor = UIColor(red: 255.0/255.0, green: 251.0/255.0, blue: 251.0/255.0, alpha: 1.0)
        tableView.backgroundColor = UIColor(red: 255.0/255.0, green: 251.0/255.0, blue: 251.0/255.0, alpha: 1.0)
    }
    
    func menuButtonPressed() {
        performSegueWithIdentifier("menu", sender: nil)

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
        return clothingCategories.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = clothingCategories[indexPath.row]
        
        
        cell.backgroundColor = UIColor.clearColor()


        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */


    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {

            // Delete the row from the data source
            clothingCategories.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        
       
    }



    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    
    

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

    
    @IBAction func unwindToMyClosetScreen(segue:UIStoryboardSegue) {
    }
    
    @IBAction func unwindToPrevScreen(segue:UIStoryboardSegue) {
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showCategory" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! MyClosetCollectionViewController
                if clothingCategories[indexPath.row] == tShirt {
                    destinationController.cloth = tshirtItems
                } else if clothingCategories[indexPath.row] == shirts {
                    destinationController.cloth = shirtItems
                } else if clothingCategories[indexPath.row] == shorts {
                    destinationController.cloth = shortsItems
                } else if clothingCategories[indexPath.row] == pants {
                    destinationController.cloth = pantsItems
                } else if clothingCategories[indexPath.row] == skirts {
                    destinationController.cloth = skirtItems
                } else if clothingCategories[indexPath.row] == dress {
                    destinationController.cloth = dressItems
                }
                
            }
        } }
    
}




