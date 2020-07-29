//
//  MainTableViewController.swift
//  Library Demo
//
//  Created by mis on 2020/7/24.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

//import UIKit
//
//class MainTableViewController: UITableViewController
//{
//    var book: Book!
//    
//    //@IBOutlet weak var bookImagesHeaderView: BookImagesHeaderView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//       //self.tableView.estimatedRowHeight = self.tableView.rowHeight
//       //self.tableView.rowHeight = UITableViewAutomaticDimension
//        
//        //self.tabBarController?.tabBar.items![1].badgeValue = "2"
//    }
//    
//    struct Storyboard {
//        static let recommendationCell = "RecommendationCell"
//        static let recommendationBookImageCell = "RecommendationBookCell"
//        static let popularCell = "PopularCell"
//        static let popularBookCell = "PopularBookCell"
////        static let suggestionCell = "SuggestionCell"
////        static let buyButtonCell = "BuyButtonCell"
//    }
//    
//    // MARK : - Navigation
//    
//  
//    }
//
//
//extension MainTableViewController
//{
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // 0 - book detail cell
//        // 1 - buy button
//        // 2 - b ook full details button cell
//        // 3 - you might like this cell
//        return 6
//    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier:Storyboard.recommendationCell, for: indexPath)
//            
//            return cell
//        } else if indexPath.row == 1 {
//            let cell = tableView.dequeueReusableCell(withIdentifier:Storyboard.recommendationBookImageCell, for: indexPath) as! RecommendationTableViewCell
//            
//            return cell
//            
//        }
//        else if indexPath.row == 2 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.popularCell, for: indexPath)
//
//            return cell
//        } else if indexPath.row == 3 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.popularBookCell, for: indexPath) as! PopularTableViewCell
//
//            return cell
//        }
//        
//        return UITableViewCell()
//    }
//    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 {
//            
//            return 50
//        }
//        
//        if indexPath.row == 1 {
//            
//            return 200
//        }
//        if indexPath.row == 2 {
//            
//            return 50
//        }
//        if indexPath.row == 3 {
//            
//            return 200
//        }
//        return 0
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        let layout = collectionViewLayout as! UICollectionViewFlowLayout
//        layout.minimumLineSpacing = 5
//        layout.minimumInteritemSpacing = 2.5
//        
//        let numberOfItemsPerRow: CGFloat = 2.0
//        let itemWidth = (collectionView.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
//        
//        return CGSize(width: itemWidth, height: itemWidth)
//    }
//    
//    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
//    {
//        if indexPath.row == 1 {
//            if let cell = cell as? RecommendationTableViewCell {
//                cell.collectionView.dataSource = self
//                cell.collectionView.delegate = self
//                cell.collectionView.reloadData()
//                //cell.collectionView.isScrollEnabled = false
//            }
//        }
//        if indexPath.row == 3 {
//            if let cell = cell as? PopularTableViewCell {
//                cell.collectionView1.dataSource = self
//                cell.collectionView1.delegate = self
//                cell.collectionView1.reloadData()
//                //cell.collectionView.isScrollEnabled = false
//            }
//        }
//        
//    }
//    
////    override func tableView(_ tableView: UITableView, heightForRowAt
////        indexPath: IndexPath) -> CGFloat
////    {
////        if indexPath.row == 1 {
////            return tableView.bounds.width
////        } else {
////            return UITableViewAutomaticDimension
////        }
////    }
//}
//
//extension MainTableViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
//{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 4
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
//    {
//        if collectionView == self.collectionView{
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.recommendationBookImageCell, for: indexPath) as! RecommendationCollectionViewCell
//        
//            let books = Book.fetchbooks()
//            cell.image = books[indexPath.item].images?.first
//        
//            return cell}
//        
//        else if collectionView == self.collectionView1{
//        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.popularBookCell, for: indexPath) as! PopularCollectionViewCell
//    
//    // TODO: - get your data model...
//            let books = Book.fetchbooks()
//            cell1.image = books[indexPath.item].images?.first
//    
//            return cell1
//        }
//        return UICollectionViewCell()
//}
//}
