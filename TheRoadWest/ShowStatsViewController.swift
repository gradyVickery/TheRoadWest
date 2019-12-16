//
//  ShowStatsViewController.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 12/14/19.
//  Copyright © 2019 Grady Vickery. All rights reserved.
//

import UIKit

class ShowStatsViewController: UIViewController {
    
    var testedValue = 0
    
    @IBOutlet weak var testedValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testedValueLabel.text = String(testedValue)
    }
}
