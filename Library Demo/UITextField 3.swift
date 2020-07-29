//
//  File.swift
//  Library Demo
//
//  Created by mis on 2020/7/26.
//  Copyright © 2020 Developers Academy. All rights reserved.
//
import UIKit

extension UITextField {
    
    func addRightView(image: UIImage, isSecure: Bool = false) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 0, height: 0))
        imageView.image = image
        
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(#imageLiteral(resourceName: "sight"), for: .normal)
            button.setImage(#imageLiteral(resourceName: "eye"), for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
        } else {
            rightView = imageView
        }
        rightViewMode = .always
    }
    
    @objc func onClickEye(sender: UIButton) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
}

