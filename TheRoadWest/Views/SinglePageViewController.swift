//
//  SinglePageViewController.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 12/16/19.
//  Copyright © 2019 Grady Vickery. All rights reserved.
//

import UIKit

class SinglePageViewController: UIViewController, DataViewControllerDelegate {
 
    var currentViewControllerIndex = 0
    
    // for testing a stats view page
    var food = 0

    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePageViewController()
  
    }
    
    //MARK:- Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowStats" {
            let controller = segue.destination as! StatViewController
            controller.food = food // testing assigning stats to new stat page
        }
    }
    
    // Initial page view
    func configurePageViewController() {
        guard let pageViewController = storyboard?.instantiateViewController(identifier: String(describing: CustomPageViewController.self)) as? CustomPageViewController
        else {
            return
        }
        pageViewController.delegate = self
        addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(pageViewController.view)
            
        guard let startingViewController = detailViewControllerAt(index: currentViewControllerIndex)
            else {
                return
            }
            
        pageViewController.setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
    }
    
    // MARK:- DataViewController Delegate methods
    
    // testing stat gathering
    func addFood() {
        food += 1
    }
    
    func setTitle(_ chapter: Chapter) {
        title = chapter.title
    }
    
    // Method to handle button clicks and page turn animation
    func setViewControllerFromIndex(index: Int) {
        
        let oldIndex = currentViewControllerIndex
        print(currentViewControllerIndex)
        currentViewControllerIndex = index
        print(currentViewControllerIndex)
                
        guard let pageViewController = storyboard?.instantiateViewController(identifier: String(describing: CustomPageViewController.self)) as? CustomPageViewController
            else {
                return
        }
        pageViewController.delegate = self
        addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        contentView.addSubview(pageViewController.view)
        
        guard let startingViewController = detailViewControllerAt(index: oldIndex)
            else {
                return
        }
        guard let nextViewController = detailViewControllerAt(index: currentViewControllerIndex)
            else {
                return
        }
                      
        pageViewController.setViewControllers(
            [startingViewController],
            direction: .forward,
            animated: false,
            completion: nil)
        
        // added delay to allow old page to finish
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            pageViewController.setViewControllers(
                [nextViewController],
                direction: .forward,
                animated: true,
                completion: nil)
        }
        
    }

    
    func detailViewControllerAt(index: Int) -> DataViewController? {
        guard let dataViewController = storyboard?.instantiateViewController(withIdentifier: String(describing: DataViewController.self)) as? DataViewController
            else {
                return nil
        }
        dataViewController.index = index
        dataViewController.delegate = self
     
        return dataViewController
    }
}

// MARK:- PageView Data and Delegates
extension SinglePageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {

        return currentViewControllerIndex
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        return nil
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        return nil
    }
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return (currentChapter?.textItems.count)!
//    }
    
}
