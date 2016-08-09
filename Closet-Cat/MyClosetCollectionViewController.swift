//
//  MyClosetCollectionViewController.swift
//  Closet-Cat
//
//  Created by Sungmin Kim on 8/7/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyClosetCollectionViewController: UICollectionViewController {
    
    //var clothCat:Clothing!
    
    var cloth = tshirtItems
    



    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        
        // Do any additional setup after loading the view.
//        if clothCat.category == tShirt {
//            cloth = tshirtItems
//        } else if clothCat.category == shirts {
//            cloth = shirtItems
//        } else if clothCat.category == shorts {
//            cloth = shortsItems
//        } else if clothCat.category == pants {
//            cloth = pantsItems
//        } else if clothCat.category == skirts {
//            cloth = skirtItems
//        } else if clothCat.category == dress {
//            cloth = dressItems
//        }
//        
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
        return cloth.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let block = collectionView.dequeueReusableCellWithReuseIdentifier("Block", forIndexPath: indexPath) as! MyClosetCollectionViewCell
    


        
        // Configure the cell
        
        block.clothImageView.image = UIImage(named:cloth[indexPath.item].image)
    
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showItemDetail" {
            if let indexPath = collectionView!.indexPathForCell(sender as! MyClosetCollectionViewCell) {
                let destinationController = segue.destinationViewController as! ClothingDetailViewController

                destinationController.clothItem = cloth[indexPath.item]
                
            }
        } }

}
