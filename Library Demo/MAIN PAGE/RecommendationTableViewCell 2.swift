//
//  RecommendationTableViewCell.swift
//  Library Demo
//
//  Created by mis on 2020/5/26.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit

class RecommendationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
