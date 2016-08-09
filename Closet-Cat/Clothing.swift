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


let tShirt = "T-shirt"
let shirts = "Shirts"
let shorts = "Shorts"
let pants = "Pants"
let skirts = "Skirts"
let dress = "Dress"

var clothingCategories = [tShirt, shirts, shorts, pants, skirts, dress]


var tshirtItems:[Clothing] = [
    
    Clothing(name: "Black Cactus T-shirt", category: tShirt, image: "black-cactus-t-shirt", comments: nil),
    Clothing(name: "Donut T-shirt", category: tShirt, image: "donut-t-shirt", comments: nil),
    Clothing(name: "Purple T-shirt", category: tShirt, image: "t-shirt-1", comments: nil),
    Clothing(name: "Blue Tanktop", category: tShirt, image: "t-shirt-2", comments: "Tanktop"),
    Clothing(name: "Light Purple T-shirt", category: tShirt, image: "t-shirt-3", comments: nil),
    Clothing(name: "Pineapple Tanktop", category: tShirt, image: "pineapple-tank", comments: "Tanktop"),
    ]



var shirtItems:[Clothing] = [
    
    Clothing(name: "Blue Short Sleeve Shirt", category: shirts, image: "blue-short-sleeve-shirt", comments: "Short sleeve"),
    Clothing(name: "Pink Shirt", category: shirts, image: "pink-shirt", comments: nil),
    Clothing(name: "Red Plaid Shirt", category: shirts, image: "red-plaid-shirt", comments: nil),
]



var shortsItems:[Clothing] = [
    
    Clothing(name: "Navy Shorts", category: shorts, image: "anchor-navy-shorts", comments: "Has anchor patterns"),
    Clothing(name: "Blue Striped Shorts", category: shorts, image: "blue-striped-shorts", comments: nil),
    Clothing(name: "Jean Shorts", category: shorts, image: "jean-shorts", comments: nil),
]



var pantsItems:[Clothing] = [
    
    Clothing(name: "Jeans", category: pants, image: "jean", comments: nil),
]



var skirtItems:[Clothing] = [
    
    Clothing(name: "Flower Patterned Skirt", category: skirts, image: "flower-skirt", comments: "patterned with flowers"),
    Clothing(name: "Gray Skirt", category: skirts, image: "gray-skirt", comments: "layered"),
    Clothing(name: "Mint Skirt", category: skirts, image: "mint-skirt", comments: "mint colored"),
    Clothing(name: "Red Skirt", category: skirts, image: "red-skirt", comments: nil),
]



var dressItems:[Clothing] = [
    
    Clothing(name: "Black Striped T-shirt Dress", category: dress, image: "black-striped-t-shirt-dress", comments: nil),
    Clothing(name: "Blue Lace Dress", category: dress, image: "blue-lace-dress", comments: nil),
    Clothing(name: "Mint Dress", category: dress, image: "mint-sleeveless-collar-dress", comments: "Sleeveless and button up with collar"),
    Clothing(name: "Red Sundress", category: dress, image: "red-sundress", comments: nil)


]