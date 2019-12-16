//
//  PageTestingViewController.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 12/15/19.
//  Copyright © 2019 Grady Vickery. All rights reserved.
//

import UIKit

class PageTestingViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var gameStatNum = 0
    
    var pageController: UIPageViewController!
    var controller = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        pageController = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: nil)
        pageController.dataSource = self
        pageController.delegate = self

        addChild(pageController)
        view.addSubview(pageController.view)

        let views = ["pageController": pageController.view] as [String: AnyObject]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[pageController]|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[pageController]|", options: [], metrics: nil, views: views))


        pageController.setViewControllers([controller]
        , direction: .forward, animated: false)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        return nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let page = ViewController()
        
        return page
    }

    func randomCGFloat() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }

    func randomColor() -> UIColor {
        return UIColor(red: randomCGFloat(), green: randomCGFloat(), blue: randomCGFloat(), alpha: 1)
    }


}

