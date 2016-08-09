//
//  ViewController.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/4/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    
    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Sorry :(", message: "Service unavailable at this time", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }



    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton()
        button.frame = CGRectMake(0, 0, 31, 31) //won't work if you don't set frame
        button.setImage(UIImage(named: "menu-icon"), forState: .Normal)
        button.addTarget(self, action: #selector(HomePageViewController.menuButtonPressed), forControlEvents: .TouchUpInside)
        
        let barButton = UIBarButtonItem()
        barButton.customView = button
        self.navigationItem.leftBarButtonItem = barButton
        
        //lighter pink
        view.backgroundColor = UIColor(red: 255.0/255.0, green: 251.0/255.0, blue: 251.0/255.0, alpha: 1.0)

    }
    
    func menuButtonPressed() {
        performSegueWithIdentifier("menu", sender: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToHomeScreen(segue:UIStoryboardSegue) {
    }
    
    @IBAction func unwindToPrevScreen(segue:UIStoryboardSegue) {
    }
    
    
    

}

