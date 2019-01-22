//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Dmitry Novosyolov on 16/01/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultType: UILabel!
    @IBOutlet weak var resultDescription: UILabel!
    
    var dogIndex = 0
    var catIndex = 0
    var rabbitIndex = 0
    var turtleUndex = 0
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        presentResult()
    }
    
    func presentResult () {
        answers.enumerated().forEach {
            switch $0.element.type {
            case .dog:
                dogIndex += 1
            case .cat:
                catIndex += 1
            case .rabbit:
                rabbitIndex += 1
            case .turtle:
                turtleUndex += 1
            }
        }
        
        let result = [dogIndex, catIndex, rabbitIndex, turtleUndex]
        
        print(result)
        
     }
}
