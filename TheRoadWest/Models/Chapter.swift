//
//  Chapter.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 1/14/20.
//  Copyright © 2020 Grady Vickery. All rights reserved.
//

import Foundation

class Chapter {
    var title: String
    var textItems: [ScreenBuild]

    
    init(title: String, textItems: [ScreenBuild]) {
        self.title = title
        self.textItems = textItems
    }
    
}
