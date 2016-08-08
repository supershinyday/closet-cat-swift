//
//  ClothingDetailViewController.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/5/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

class ClothingDetailViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate {
    
    @IBOutlet var tableView:UITableView!
    @IBAction func unwindToClothingDetail(segue:UIStoryboardSegue) {
    }
    
    
    var clothingItems: [Clothing] = [
        Clothing(name: "Purple Shirt", category: "T-Shirt", image: "t-shirt-1", comments: "long comment to see if the text wraps around.")
    
    ]

    override func viewDidLoad() {
        tableView.backgroundColor = UIColor(red: 255.0/255.0, green: 226.0/255.0, blue:
            225.0/255.0, alpha: 0.2)
        
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        title = clothingItems[0].name
        
        super.viewDidLoad()

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

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return 5 }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ClothingDetailTableViewCell
        
        cell.backgroundColor = UIColor.clearColor()
        
        
        tableView.tableFooterView = UIView(frame: CGRectZero)
        
        
        // Configure the cell...
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = clothingItems[0].name
        case 1:
            cell.fieldLabel.text = "Category"
            cell.valueLabel.text = clothingItems[0].category
        case 2:
            cell.fieldLabel.text = "Date Last Worn"
            cell.valueLabel.text = ""
        case 3:
            cell.fieldLabel.text = "Number of Times Worn"
            cell.valueLabel.text = ""
        case 4:
            cell.fieldLabel.text = "Comments"
            cell.valueLabel.text = clothingItems[0].comments
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        return cell }
    
    
}
