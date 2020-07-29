//
//  LibraryViewController.swift
//  Library Demo
//
//  Created by mis on 2020/7/27.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit


class LibraryViewController: UIViewController {

    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
        

    @IBOutlet weak var funcCollectionView: UICollectionView!
    
   
    var imgSlider = [  UIImage(named:"b5"),
                        UIImage(named:"b1") ,
                        UIImage(named:"b3") ,
                        UIImage(named:"b4"), UIImage(named:"b2")
                        ]
    var imgFunc = [ UIImage(named:"fu4"), UIImage(named:"fu2") ,
                    UIImage(named:"fu3") ,
                    UIImage(named:"fu1"), UIImage(named:"fu5") , UIImage(named:"fu6"), UIImage(named:"blank")]
    var lalFunc = ["圖書館導覽","館藏介紹","租用討論室","影音借閱","失物招領","交通動線",""]
        
        var timer = Timer()
        var counter = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            sliderCollectionView.dataSource = self
            sliderCollectionView.delegate = self
            funcCollectionView.dataSource = self
            funcCollectionView.delegate = self
            
            pageView.numberOfPages = imgSlider.count
            pageView.currentPage = 0
            DispatchQueue.main.async {
                self.timer = Timer.scheduledTimer(timeInterval: 3.5, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
            }
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
       @objc func changeImage() {
        
        if counter < imgSlider.count {
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            pageView.currentPage = counter
            counter += 1
        } else {
            counter = 0
            let index = IndexPath.init(item: counter, section: 0)
            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
            pageView.currentPage = counter
            counter = 1
        }
            
        }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let row = collectionView.indexPathForSelectedRow?.row, let controller = segue.destination as? LibraryDetailViewController {
//            let post = posts[row]
//            controller.post = post
//        }
//
//    }

    }


extension LibraryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            if collectionView == self.sliderCollectionView{
                return imgSlider.count
            }
            return imgFunc.count
            
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if collectionView == self.sliderCollectionView{
                let cellSlider = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LibraryCollectionViewCell
                cellSlider.imgSlider.image = imgSlider[indexPath.row]
                return cellSlider
            }
            else{
                let cellFunc = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LibraryCollectionViewCell
                cellFunc.imgFunc.image = imgFunc[indexPath.row]
                cellFunc.lalFunc.text = lalFunc[indexPath.row]
                return cellFunc
            }
            }
//        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//            let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = mainStoryboard.instantiateViewController(withIdentifier : "LibraryDetailViewController") as? LibraryDetailViewController
//            vc?.image = imgFunc[indexPath.row]!
//            self.navigationController?.pushViewController(vc! , animated: true)
//    }
           
        }
    


extension LibraryViewController: UICollectionViewDelegateFlowLayout {

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            if collectionView == self.sliderCollectionView{
                let bounds = collectionView.bounds
                return CGSize(width: bounds.width/2, height: 200)
            }
            let bounds = sliderCollectionView.bounds
            return CGSize(width: 414, height: 300)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0.0
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0.0
        }
    }
