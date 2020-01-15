//
//  DataViewController.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 12/16/19.
//  Copyright © 2019 Grady Vickery. All rights reserved.
//

import UIKit

protocol DataViewControllerDelegate {
    func setViewControllerFromIndex(index: Int)
    func nextChapter()
    func addFood()
}

class DataViewController: UIViewController, UIScrollViewDelegate {

    var chapter: Chapter?
    var textItems: [ScreenBuild]!
    var delegate: DataViewControllerDelegate?
    var index = 0
   
    @IBOutlet weak var gameTextView: UITextView!
    @IBOutlet var answerButtons: [UIButton]!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        textItems = chapter?.textItems
    
        buttonSetup()
        configScreen(stateNum: index)
    }

    // Button actions -- SinglePageViewController is delegate
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        let btn = sender as UIButton
        let btnIndex = answerButtons.firstIndex(of: btn)
        let btnGroup = textItems[index].buttons[btnIndex!]
        
        // action item testing Button[1]
        if let action = btnGroup.actionGroup {
            calculateStatChange(action)
        }
        
        index = textItems[index].buttons[btnIndex!].gameStateNumber
        self.delegate?.setViewControllerFromIndex(index: index)
    }
    
    func configScreen(stateNum: Int) {
        index = stateNum
        gameTextView.text = textItems[index].textView
        configButtons(index)
    }
    
    func buttonSetup() {
        for button in answerButtons {
            button.layer.cornerRadius = 6
            button.layer.borderWidth = 3
            button.layer.borderColor = UIColor.darkGray.cgColor
        }
    }
    
    func configButtons(_ index: Int) {
        var count = 0
        for button in answerButtons {
            if textItems[index].buttons[count].buttonText == "" {
                button.isHidden = true
            } else {
                button.isHidden = false
                button.setTitle(textItems[index].buttons[count].buttonText, for: .normal)
            }
            count += 1
        }
    }
    
    // Possible stat gathering
    func calculateStatChange(_ action: String) {
        switch action {
        case "gainFood":
            self.delegate?.addFood()
            print("You added 1 food!")
        case "nextChapter":
            print("called next chapter from datavc")
            self.delegate?.nextChapter()
            
        default:
            print("Fell through to default")
        }
    }
}



