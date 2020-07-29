//
//  bookDetailCell.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class BookDetailCell : UITableViewCell
{
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookDescriptionLabel: UILabel!
    
    var book: Book! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        bookNameLabel.text = book.name
        bookDescriptionLabel.text = book.description
    }
}
