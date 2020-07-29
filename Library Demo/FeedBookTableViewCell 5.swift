//
//  FeedbookTableViewCell.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class FeedBookTableViewCell : UITableViewCell
{
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookauthorLabel: UILabel!
    
    var book: Book! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        bookImageView.image = book.images?.first
        bookNameLabel.text = book.name
        if let author = book.author {
            bookauthorLabel.text = "\(author)"
        } else {
            bookauthorLabel.text = ""
        }
    }
}
