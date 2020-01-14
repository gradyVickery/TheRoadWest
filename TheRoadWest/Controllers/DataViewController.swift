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
}

class DataViewController: UIViewController {

    
    var delegate: DataViewControllerDelegate?
   
    var displayText: String?
    var index = 0
   
    @IBOutlet weak var gameTextView: UITextView!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStyling()
        callNextScreen(stateNum: index)
    }
    
    // Button actions -- SinglePageViewController is delegate
    @IBAction func button1Clicked(_ sender: Any) {
        
        index = screenItems[index].button1.gameStateNumber
        self.delegate?.setViewControllerFromIndex(index: index)
        
    }
    
    @IBAction func button2Clicked(_ sender: Any) {
        
        index = screenItems[index].button2.gameStateNumber
        self.delegate?.setViewControllerFromIndex(index: index)
        
    }
    
    
    @IBAction func button3Clicked(_ sender: Any) {
        
        index = screenItems[index].button3.gameStateNumber
        self.delegate?.setViewControllerFromIndex(index: index)
        
    }
    
    @IBAction func button4Clicked(_ sender: Any) {
        
        index = screenItems[index].button4.gameStateNumber
        self.delegate?.setViewControllerFromIndex(index: index)
        
    }
    func callNextScreen(stateNum: Int) {
          
        index = stateNum
        gameTextView.text = screenItems[index].textView
        configButtons(index)
        
    }
   
    //
    func buttonStyling() {
        answerButton1.layer.cornerRadius = 5
        answerButton2.layer.cornerRadius = 5
        answerButton3.layer.cornerRadius = 5
        answerButton4.layer.cornerRadius = 5
        
        answerButton1.layer.borderWidth = 1
        answerButton2.layer.borderWidth = 1
        answerButton3.layer.borderWidth = 1
        answerButton4.layer.borderWidth = 1
        
        answerButton1.layer.borderColor = UIColor.gray.cgColor
        answerButton2.layer.borderColor = UIColor.gray.cgColor
        answerButton3.layer.borderColor = UIColor.black.cgColor
        answerButton4.layer.borderColor = UIColor.black.cgColor
    }
    
    func configButtons(_ index: Int) {
        if screenItems[index].button1.buttonText == "" {
            answerButton1.isHidden = true
        } else {
            answerButton1.isHidden = false
            answerButton1.setTitle(screenItems[index].button1.buttonText, for: .normal)
        }
        if screenItems[index].button2.buttonText == "" {
            answerButton2.isHidden = true
        } else {
            answerButton2.isHidden = false
            answerButton2.setTitle(screenItems[index].button2.buttonText, for: .normal)
        }
        if screenItems[index].button3.buttonText == "" {
            answerButton3.isHidden = true
        } else {
            answerButton3.isHidden = false
            answerButton3.setTitle(screenItems[index].button3.buttonText, for: .normal)
        }
        if screenItems[index].button4.buttonText == "" {
            answerButton4.isHidden = true
        } else {
            answerButton4.isHidden = false
            answerButton4.setTitle(screenItems[index].button4.buttonText, for: .normal)
        }
    }

}



