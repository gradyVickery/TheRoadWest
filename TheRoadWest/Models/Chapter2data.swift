//
//  Chapter2data.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 1/14/20.
//  Copyright © 2020 Grady Vickery. All rights reserved.
//

import Foundation

let chapter2 =
    Chapter(title: "Chapter 2", textItems: [
    // 0
    ScreenBuild(
        textView: "2Welcome to the game! I will be your host. Please pay attention to the details you recieve here. \n\nDo you want to play?",
        buttons: [
            Button(buttonText: "Yes", gameStateNumber: 1, actionGroup: "gainFood"),
            Button(buttonText: "No", gameStateNumber: 0),
            Button(buttonText: "", gameStateNumber: 0),
            Button(buttonText: "", gameStateNumber: 0) ]),
        // 1
    ScreenBuild(
        textView: "2Entered yes, and ready to start the game",
        buttons: [
        Button(buttonText: "Let's move on", gameStateNumber: 2, actionGroup: "gainFood"),
        Button(buttonText: "2Where's Waldo?", gameStateNumber: 0),
        Button(buttonText: "Go to end", gameStateNumber: 0),
        Button(buttonText: "Just sit here and wait", gameStateNumber: 0)]),
        // 2
    ScreenBuild(
        textView: """
        2I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas.
            
        I made it to the market just in time to buy some peas.
        I made it to the market just in time to buy some peas.
        I made it to the market just in time to buy some peas.
        I made it to the market just in time to buy some peas.
        I made it to the market just in time to buy some peas.
        I made it to the market just in time to buy some peas.
        I made it to the market just in time to buy some peas.

        What do you want to do with peas?

    """,
        buttons: [
            Button(buttonText: "2Eat peas", gameStateNumber: 0),
            Button(buttonText: "Save peas for later", gameStateNumber: 0),
            Button(buttonText: "Throw peas in the trash", gameStateNumber: 0),
            Button(buttonText: "", gameStateNumber: 0)]),
        // 3
    ScreenBuild(
        textView: "2Third screen...waldo is not here ",
        buttons: [
            Button(buttonText: "2Back to start", gameStateNumber: 0),
            Button(buttonText: "", gameStateNumber: 2),
            Button(buttonText: "", gameStateNumber: 1),
            Button(buttonText: "", gameStateNumber: 0)]),
        // 4
    ScreenBuild(
        textView: "4th screen. ",
        buttons: [
            Button(buttonText: "2Back to start", gameStateNumber: 0),
            Button(buttonText: "", gameStateNumber: 2),
            Button(buttonText: "", gameStateNumber: 1),
            Button(buttonText: "", gameStateNumber: 0)])
        ])
