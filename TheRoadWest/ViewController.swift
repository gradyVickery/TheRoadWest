////
////  ViewController.swift
////  TheRoadWest
////
////  Created by Grady Vickery on 12/12/19.
////  Copyright © 2019 Grady Vickery. All rights reserved.
////
//
//import UIKit
//
//
//
//class ViewController: UIViewController {
//
//
//    var testingValues = 0
//
//    var gameStateNum = 0
//
//    @IBOutlet weak var gameTextView: UITextView!
//    @IBOutlet weak var answerButton1: UIButton!
//
//    @IBOutlet weak var answerButton2: UIButton!
//    @IBOutlet weak var answerButton3: UIButton!
//    @IBOutlet weak var answerButton4: UIButton!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        buttonStyling()
//        callNextScreen(stateNum: 0)
//    }
//
//    // MARK:- Button Actions
//
//    @IBAction func answerButton1Action(_ sender: Any) {
//        if let group = screenItems[gameStateNum].button1.actionGroup  {
//            determineValues(group)
//        }
//
//        gameStateNum = screenItems[gameStateNum].button1.gameStateNumber
//        callNextScreen(stateNum: gameStateNum)
//    }
//
//    @IBAction func answerButton2Action(_ sender: Any) {
//        if let group = screenItems[gameStateNum].button2.actionGroup  {
//            determineValues(group)
//        }
//        gameStateNum = screenItems[gameStateNum].button2.gameStateNumber
//        callNextScreen(stateNum: gameStateNum)
//    }
//
//    @IBAction func answerButton3Action(_ sender: Any) {
//        if let group = screenItems[gameStateNum].button3.actionGroup  {
//            determineValues(group)
//        }
//        gameStateNum = screenItems[gameStateNum].button3.gameStateNumber
//        callNextScreen(stateNum: gameStateNum)
//    }
//
//    @IBAction func answerButton4Action(_ sender: Any) {
//        if let group = screenItems[gameStateNum].button4.actionGroup  {
//            determineValues(group)
//        }
//        gameStateNum = screenItems[gameStateNum].button4.gameStateNumber
//        callNextScreen(stateNum: gameStateNum)
//    }
//
//    // MARK:- Navigation -- MOve to main?
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "ShowStats" {
//            let controller = segue.destination as! ShowStatsViewController
//
//            // *** Pass values to 'Stats' view here ***
//            controller.testedValue = testingValues
//        }
//
//    }
//
//
//    // MARK:- Screen Helpers
//
//    func callNextScreen(stateNum: Int) {
//
//        let index = stateNum
//        gameTextView.text = screenItems[index].textView
//        configButtons(index)
//        gameStateNum = index
//
//    }
//
//    func buttonStyling() {
//        answerButton1.layer.cornerRadius = 5
//        answerButton2.layer.cornerRadius = 5
//        answerButton3.layer.cornerRadius = 5
//        answerButton4.layer.cornerRadius = 5
//
//        answerButton1.layer.borderWidth = 1
//        answerButton2.layer.borderWidth = 1
//        answerButton3.layer.borderWidth = 1
//        answerButton4.layer.borderWidth = 1
//
//        answerButton1.layer.borderColor = UIColor.black.cgColor
//        answerButton2.layer.borderColor = UIColor.black.cgColor
//        answerButton3.layer.borderColor = UIColor.black.cgColor
//        answerButton4.layer.borderColor = UIColor.black.cgColor
//    }
//
//    func configButtons(_ index: Int) {
//        if screenItems[index].button1.buttonText == "" {
//            answerButton1.isHidden = true
//        } else {
//            answerButton1.isHidden = false
//            answerButton1.setTitle(screenItems[index].button1.buttonText, for: .normal)
//        }
//        if screenItems[index].button2.buttonText == "" {
//            answerButton2.isHidden = true
//        } else {
//            answerButton2.isHidden = false
//            answerButton2.setTitle(screenItems[index].button2.buttonText, for: .normal)
//        }
//        if screenItems[index].button3.buttonText == "" {
//            answerButton3.isHidden = true
//        } else {
//            answerButton3.isHidden = false
//            answerButton3.setTitle(screenItems[index].button3.buttonText, for: .normal)
//        }
//        if screenItems[index].button4.buttonText == "" {
//            answerButton4.isHidden = true
//        } else {
//            answerButton4.isHidden = false
//            answerButton4.setTitle(screenItems[index].button4.buttonText, for: .normal)
//        }
//    }
//
//    // MARK:- Stat Controls -- TODO where to put?
//    func determineValues(_ group: String) {
//
//        switch group {
//        case "gainFood":
//            testingValues += 1
//        default:
//            print("went to default")
//        }
//
//        print("newValue:  \(testingValues)")
//    }
//}

