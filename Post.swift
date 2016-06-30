//
//  Post.swift
//  FreeStuffPDX
//
//  Created by Math LLC on 6/30/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Post: NSManagedObject {

    func setPostImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getPostImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }
}
