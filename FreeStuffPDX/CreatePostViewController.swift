//
//  CreatePostViewController.swift
//  FreeStuffPDX
//
//  Created by Math LLC on 6/30/16.
//  Copyright © 2016 Math LLC. All rights reserved.
//

import UIKit
import CoreData

class CreatePostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var postTitle: UITextField!
    @IBOutlet weak var postDesc: UITextField!
    @IBOutlet weak var postLocation: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var addPostBtn: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        postImg.layer.cornerRadius = 4.0
        postImg.clipsToBounds = true

    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func createPost(sender: AnyObject!) {
        if let title = postTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Post", inManagedObjectContext: context)!
            let post = Post(entity: entity, insertIntoManagedObjectContext: context)
            post.title = title
            post.desc = postDesc.text
            post.location = postLocation.text
            post.setPostImage(postImg.image!)
            
            context.insertObject(post)
            
            do {
                try context.save()
            } catch {
                print("Could not save recipe")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}
