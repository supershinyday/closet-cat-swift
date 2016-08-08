//
//  MyOutfitsCollectionViewController.swift
//  Closet-Cat
//
//  Created by Sungmin Kim on 8/7/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyOutfitsCollectionViewController: UICollectionViewController {

    
    var outfits = ["outfit-1", "outfit-2", "outfit-3", "outfit-4", "outfit-5", "outfit-6", "outfit-7", "outfit-8", "outfit-9", "outfit-10", "outfit-11", "outfit-12", "outfit-13", "outfit-14", "outfit-15", "outfit-16"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return outfits.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cellidentifier = "Block"
        let block = collectionView.dequeueReusableCellWithReuseIdentifier(cellidentifier, forIndexPath: indexPath) as! MyOutfitsCollectionViewCell
    
        // Configure the cell
        
        //block.nameLabel.text = outfits[indexPath.item]
        block.outfitImageView.image = UIImage(named: outfits[indexPath.item])
    
        return block
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
