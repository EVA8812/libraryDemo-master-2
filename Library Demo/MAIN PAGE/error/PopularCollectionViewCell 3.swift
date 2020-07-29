//
//  PopularCollectionViewCell.swift
//  Library Demo
//
//  Created by mis on 2020/7/24.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ImageView: UIImageView!
    var image: UIImage! {
        didSet {
            self.ImageView.image = image
            self.setNeedsLayout()
        }
    }
    
}
