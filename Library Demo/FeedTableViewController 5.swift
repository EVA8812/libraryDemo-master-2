//
//  FeedTableViewController.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class FeedTableViewController : UITableViewController
{
    var books: [Book]?
    
    struct Storyboard {
        static let feedBookCell = "FeedBookCell"
        static let showBookDetail = "ShowBookDetail"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "FEED"
        
        books = Book.fetchbooks()
        self.tableView.reloadData()
    
        self.tableView.estimatedRowHeight = tableView.rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.showBookDetail {
            if let bookDetailTVC = segue.destination as? BookDetailTableViewController {
                let selectedbook = self.books?[(sender as! IndexPath).row]
                bookDetailTVC.book = selectedbook
            }
        }
    }
}

// MARK - UITableViewDataSource

extension FeedTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let books = books {
            return books.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.feedBookCell, for: indexPath) as! FeedBookTableViewCell
        
        cell.book = self.books?[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }

}


// MARK: - UITableViewDelegate

extension FeedTableViewController
{
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: Storyboard.showBookDetail, sender: indexPath)
    }
}




















