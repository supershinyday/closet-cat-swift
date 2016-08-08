//
//  ViewController.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/4/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

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

}

