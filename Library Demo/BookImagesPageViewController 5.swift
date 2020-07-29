//
//  bookImagesPageViewController.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/25/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

protocol BookImagesPageViewControllerDelegate : class
{
    func setupPageController(numberOfPages: Int)
    func turnPageController(to index: Int)
}

class BookImagesPageViewController: UIPageViewController {
    
    var images: [UIImage]? = Book.fetchbooks().first!.images
    weak var pageViewControllerDelegate: BookImagesPageViewControllerDelegate?
    
    struct Storyboard {
        static let bookImageViewController = "BookImageViewController"
    }
    
    lazy var controllers: [UIViewController] = {
       
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var controllers = [UIViewController]()
        
        if let images = self.images {
            for image in images {
                let bookImageVC = storyboard.instantiateViewController(withIdentifier: Storyboard.bookImageViewController)
                controllers.append(bookImageVC)
            }
        }
        
        self.pageViewControllerDelegate?.setupPageController(numberOfPages: controllers.count)
        
        return controllers
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        automaticallyAdjustsScrollViewInsets = false
        dataSource = self
        delegate = self
        
        self.turnToPage(index: 0)
    }
    
    func turnToPage(index: Int)
    {
        let controller = controllers[index]
        var direction = UIPageViewControllerNavigationDirection.forward
        
        if let currentVC = viewControllers?.first {
            let currentIndex = controllers.index(of: currentVC)!
            if currentIndex > index {
                direction = .reverse
            }
        }
        
        self.configureDisplaying(viewController: controller)
        
        setViewControllers([controller], direction: direction, animated: true, completion: nil)
    }
    
    func configureDisplaying(viewController: UIViewController)
    {
        for (index, vc) in controllers.enumerated() {
            if viewController === vc {
                if let bookImageVC = viewController as? BookImageViewController {
                    bookImageVC.image = self.images?[index]
                    
                    self.pageViewControllerDelegate?.turnPageController(to: index)
                }
            }
        }
    }
}

// MARK: - UIPageViewControllerDataSource

extension BookImagesPageViewController : UIPageViewControllerDataSource
{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        if let index = controllers.index(of: viewController) {
            if index > 0 {
                return controllers[index-1]
            }
        }
        
        return controllers.last
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        if let index = controllers.index(of: viewController) {
            if index < controllers.count - 1 {
                return controllers[index + 1]
            }
        }
        
        return controllers.first
    }
}

extension BookImagesPageViewController : UIPageViewControllerDelegate
{
    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
    {
        self.configureDisplaying(viewController: pendingViewControllers.first as! BookImageViewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
    {
        if !completed {
            self.configureDisplaying(viewController: previousViewControllers.first as! BookImageViewController)
        }
    }
}










