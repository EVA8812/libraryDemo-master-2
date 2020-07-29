//
//  LibraryDetailViewController.swift
//  Library Demo
//
//  Created by mis on 2020/7/28.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit

class LibraryDetailViewController: UIViewController {

    @IBOutlet weak var libraryDetailImg: UIImageView!
    
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        libraryDetailImg.image = image
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
