//
//  Recipe.swift
//  recipez
//
//  Created by Nathan McGuire on 20/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Recipe: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    
    func setRecipeImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getRecipeImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }
    
}
