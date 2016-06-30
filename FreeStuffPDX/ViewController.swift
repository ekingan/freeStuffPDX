//
//  ViewController.swift
//  FreeStuffPDX
//
//  Created by Math LLC on 6/29/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 180, height: 30))
        imageView.contentMode = .ScaleAspectFit
        let image = UIImage(named: "logo.png")
        imageView.image = image
        navigationItem.titleView = imageView
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

  

}

