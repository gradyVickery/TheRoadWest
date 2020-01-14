//
//  ScreenBuildData.swift
//  TheRoadWest
//
//  Created by Grady Vickery on 12/13/19.
//  Copyright © 2019 Grady Vickery. All rights reserved.
//

import Foundation



let screenItems = [
    // 0
    ScreenBuild(
        textView: "Welcome to the game! I will be your host. Please pay attention to the details you recieve here. \n\nDo you want to play?",
        button1: Button(buttonText: "Yes", gameStateNumber: 1, actionGroup: "gainFood"),
        button2: Button(buttonText: "No", gameStateNumber: 0),
        button3: Button(buttonText: "", gameStateNumber: 0),
        button4: Button(buttonText: "", gameStateNumber: 0)),
    // 1
    ScreenBuild(
        textView: "Entered yes, and ready to start the game",
        button1: Button(buttonText: "Let's move on", gameStateNumber: 2, actionGroup: "gainFood"),
        button2: Button(buttonText: "Where's Waldo?", gameStateNumber: 3),
        button3: Button(buttonText: "Go to end", gameStateNumber: 26),
        button4: Button(buttonText: "Just sit here and wait", gameStateNumber: 5)),
    // 2
    ScreenBuild(
        textView: """
    I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas. I made it to the market just in time to buy some peas.
        
    I made it to the market just in time to buy some peas.
I made it to the market just in time to buy some peas.
I made it to the market just in time to buy some peas.
I made it to the market just in time to buy some peas.
I made it to the market just in time to buy some peas.
I made it to the market just in time to buy some peas.
I made it to the market just in time to buy some peas.

    What do you want to do with peas?


""",
    button1: Button(buttonText: "Eat peas", gameStateNumber: 6),
    button2: Button(buttonText: "Save peas for later", gameStateNumber: 7),
    button3: Button(buttonText: "Throw peas in the trash", gameStateNumber: 8),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 3
    ScreenBuild(
    textView: "Third screen...waldo is not here ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 4
    ScreenBuild(
    textView: "4th screen. ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 5
    ScreenBuild(
    textView: "5th screen. You're just waiting",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 6
    ScreenBuild(
    textView: "6th you ate the peas",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 7
    ScreenBuild(
    textView: "Saved peas for later",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 8
    ScreenBuild(
    textView: "peas gone. you starved",
    button1: Button(buttonText: "Play again", gameStateNumber: 25),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 9
    ScreenBuild(
        textView: "Welcome to the game! I will be your host. Please pay attention to the details you recieve here. \n\nDo you want to play?",
        button1: Button(buttonText: "Yes", gameStateNumber: 1, actionGroup: "gainFood"),
        button2: Button(buttonText: "No", gameStateNumber: 0),
        button3: Button(buttonText: "", gameStateNumber: 0),
        button4: Button(buttonText: "", gameStateNumber: 0)),
    // 10
    ScreenBuild(
    textView: "I made it to the market just in time to buy some peas.",
    button1: Button(buttonText: "Eat peas", gameStateNumber: 0),
    button2: Button(buttonText: "Save peas for later", gameStateNumber: 2),
    button3: Button(buttonText: "Throw peas in the trash", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 11
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 12
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 13
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 14
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 15
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 16
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 17
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 18
    ScreenBuild(
    textView: "Third screen. Seriously done for the day",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 19
    ScreenBuild(
        textView: "Welcome to the game! I will be your host. Please pay attention to the details you recieve here. \n\nDo you want to play?",
        button1: Button(buttonText: "Yes", gameStateNumber: 1, actionGroup: "gainFood"),
        button2: Button(buttonText: "No", gameStateNumber: 0),
        button3: Button(buttonText: "", gameStateNumber: 0),
        button4: Button(buttonText: "", gameStateNumber: 0)),
    // 20
    ScreenBuild(
    textView: "I made it to the market just in time to buy some peas.",
    button1: Button(buttonText: "Eat peas", gameStateNumber: 0),
    button2: Button(buttonText: "Save peas for later", gameStateNumber: 2),
    button3: Button(buttonText: "Throw peas in the trash", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 21
    ScreenBuild(
    textView: "Third screen. ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 22
    ScreenBuild(
    textView: "Third screen. ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 23
    ScreenBuild(
    textView: "Third screen. ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 24
    ScreenBuild(
    textView: "Third screen. ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 25
    ScreenBuild(
    textView: "Third screen. ",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
    // 26
    ScreenBuild(
    textView: "26 screen. End of array",
    button1: Button(buttonText: "Back to start", gameStateNumber: 0),
    button2: Button(buttonText: "", gameStateNumber: 2),
    button3: Button(buttonText: "", gameStateNumber: 1),
    button4: Button(buttonText: "", gameStateNumber: 0)),
]
