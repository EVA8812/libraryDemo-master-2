//
//  ShoppingBagTableViewController.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit
import StoreKit


class ShoppingBagTableViewController: UITableViewController
{
    struct Storyboard {
        static let numberOfItemsCell = "numberOfItemsCell"      // cell 0
        static let itemCell = "itemCell"                        // cell 1
        static let cartDetailCell = "cartDetailCell"            // cell 2
        static let cartTotalCell = "cartTotalCell"              // cell 3
        static let checkoutButtonCell = "checkoutButtonCell"    // cell 4
        static let friendCell = "FriendCell"
        
    }
    
    var books: [Book]? = Book.fetchbooks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    @IBAction func ratingAction(_ sender: UIButton) {
           if #available(iOS 10.3, *) {
               SKStoreReviewController.requestReview()
           } else {
               // Fallback on earlier versions
           }
       }
       
}

extension ShoppingBagTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let books = books {
            return books.count + 5
        } else {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let books = books else {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.numberOfItemsCell, for: indexPath) as! NumberOfItemsCell
            cell.numberOfItemsLabel.text = "Rate Your Books"
            
            return cell
        }
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.numberOfItemsCell, for: indexPath) as! NumberOfItemsCell
            cell.numberOfItemsLabel.text = "Rate Your Books"
            return cell
        } else if indexPath.row == books.count + 1 {
            // cartDetailCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartDetailCell, for: indexPath)
            
            return cell
        } else if indexPath.row == books.count + 2 {
            // cartTotalCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartTotalCell, for: indexPath)
            
            return cell
        } else if indexPath.row == books.count + 3 {
            // checkoutButtonCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.checkoutButtonCell, for: indexPath)
            
            return cell
        } else if indexPath.row == books.count + 4 {
            // friendCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.friendCell, for: indexPath)
            
            return cell
        }else {
            // itemCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell, for: indexPath) as! ShoppingCartItemCell
            cell.book = books[indexPath.row - 1]
            return cell
        }
    }
}

class NumberOfItemsCell: UITableViewCell
{
    @IBOutlet weak var numberOfItemsLabel: UILabel!
}

class ShoppingCartItemCell : UITableViewCell
{
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productauthorLabel: UILabel!
    @IBOutlet weak var removeButton: UIButton!
    
    var book: Book! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        productImageView.image = book.images?.first
        productNameLabel.text = book.name
        productauthorLabel.text = "\(book.author!)"
    }
    
    @IBAction func removeButtonDidTap(_ sender: Any) {
    }
}







