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
    func setTitle(_ chapter: Chapter)
}

class DataViewController: UIViewController {


    var chapter: Chapter?
    var textItems: [ScreenBuild]!
    var delegate: DataViewControllerDelegate?
    var index = 0
   
    @IBOutlet weak var gameTextView: UITextView!
    @IBOutlet var answerButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chapter = chapter1
        self.delegate?.setTitle(chapter!)
        textItems = chapter?.textItems
    
        buttonSetup()
        configScreen(stateNum: index)

    }

    // Button actions -- SinglePageViewController is delegate
    @IBAction func answerButtonClicked(_ sender: Any) {
        let btn = sender as! UIButton
        let btnIndex = answerButtons.firstIndex(of: btn)
       
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
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.gray.cgColor
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
}



