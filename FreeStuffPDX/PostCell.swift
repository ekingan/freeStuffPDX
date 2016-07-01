//
//  PostCell.swift
//  FreeStuffPDX
//
//  Created by Math LLC on 6/30/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDesc: UILabel!
    @IBOutlet weak var postLocation: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post) {
        postTitle.text = post.title
        postDesc.text = post.desc
        postLocation.text = post.location
        postImg.image = post.getPostImage()
    }

}
