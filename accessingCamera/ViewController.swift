//
//  ViewController.swift
//  accessingCamera
//
//  Created by Jennie Pham on 7/14/20.
//  Copyright © 2020 Jennie Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var newImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }

    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func libraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any])
        {
            
            
            if let selectedImage =
        info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {newImage.image = selectedImage}
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
}




