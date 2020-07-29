//
//  MainPageViewController.swift
//  Library Demo
//
//  Created by mis on 2020/7/26.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    let data = ["Made for you","Popular Books", "Editor Recommendation","All Category","Hot Author"]

    @IBOutlet var tableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
    
extension MainPageViewController : UITableViewDelegate,  UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainPageTableViewCell
        cell?.mainLabel.text = data[indexPath.row]
        return cell!
        
    }
//    func tableView(_ tableView: UITableView, heightForRowAtindexPath: IndexPath) -> CGFloat {
//        return 500
//    }
    
        
    }
   


