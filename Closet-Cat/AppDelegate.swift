//
//  AppDelegate.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/4/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let lightPink = UIColor(red: 255.0/255.0, green: 226.0/255.0, blue: 225.0/255.0, alpha: 1.0)
    let paleOrange = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 181.0/255.0, alpha: 1.0)
    let skyBlue = UIColor(red: 221.0/255.0, green: 255.0/255.0, blue: 250.0/255.0, alpha: 1.0)
    let lightBlue = UIColor(red: 204.0/255.0, green: 221.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    let lightGreen = UIColor(red: 188.0/255.0, green: 255.0/255.0, blue: 185.0/255.0, alpha: 1.0)


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        UINavigationBar.appearance().barTintColor = lightPink
        UINavigationBar.appearance().tintColor = UIColor.blackColor()
        if let barFont = UIFont(name: "Raleway-Light", size: 24.0) {
            UINavigationBar.appearance().titleTextAttributes =
                [NSForegroundColorAttributeName:UIColor.blackColor(),
                 NSFontAttributeName:barFont]
            
        }
        
        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name: "Raleway-Light", size: 18.0)!], forState: UIControlState.Normal)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

