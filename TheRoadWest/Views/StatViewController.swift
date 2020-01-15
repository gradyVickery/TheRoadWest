//
//  StatViewController.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 12/16/19.
//  Copyright © 2019 Grady Vickery. All rights reserved.
//

import UIKit

class StatViewController: UIViewController {
    
    var food = 0
    
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        testLabel.text = String(food)
        super.viewDidLoad()
    }
}
