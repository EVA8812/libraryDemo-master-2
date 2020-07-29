//
//  PostTableViewCell.swift
//  Library Demo
//
//  Created by mis on 2020/7/27.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var genderImage: UIImageView!
    @IBOutlet weak var likeCountImage: UIImageView!
    @IBOutlet weak var excerptLabel: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var forumNameLabel: UILabel!
        
    @IBOutlet weak var postImage: UIImageView!
        
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }

    }
