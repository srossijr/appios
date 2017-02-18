//
//  ArticlesViewController+CicleMenuDelegate.swift
//  AppList
//
//  Created by Noturno on 13/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import Foundation
import CircleMenu

extension ArticlesViewController: CircleMenuDelegate {
    
    func circleMenu(_ circleMenu: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.backgroundColor = UIColor.lightGray
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.red.cgColor
        switch atIndex {
        case 0:
            button.setTitle("Perfil", for: .normal)
            break
        case 1:
            button.setTitle("", for: .normal)
            button.setBackgroundImage(UIImage(named:"camera3"), for: .normal)
            button.layer.cornerRadius = 0.5
            button.backgroundColor = UIColor.white
            button.layer.borderWidth = 2.0
            button.layer.borderColor = UIColor.white.cgColor
            break
        case 2:
            button.setTitle("Sair", for: .normal)
            break
        default:
            print("")
        }
        
        
    }
    
    func circleMenu(_ circleMenu: CircleMenu, buttonDidSelected button: UIButton, atIndex: Int) {
    
        print(atIndex)
        
    }
    
    func circleMenu(_ circleMenu: CircleMenu, buttonWillSelected button: UIButton, atIndex: Int) {
        
        switch atIndex {
        case 0:
            break
        case 1:
            self.tappedShowCamera()
            break
        case 2:
            break
        default:
            print("Deu ruim")
        }
    }
    

    func tappedShowCamera() {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
            
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
}

extension ArticlesViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
}
