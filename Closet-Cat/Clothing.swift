//
//  Clothing.swift
//  Closet-Cat
//
//  Created by GirlsWhoCode on 8/5/16.
//  Copyright © 2016 GirlsWhoCode. All rights reserved.
//

import Foundation

class Clothing {
    var name = ""
    var category = ""
    var image = ""
    var comments:String? = ""
    
    init(name:String, category:String, image:String, comments:String?) {
        self.name = name
        self.category = category
        self.image = image
        self.comments = comments
    }
}