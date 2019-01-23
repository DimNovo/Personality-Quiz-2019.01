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
    @IBOutlet weak var resultDefinition: UILabel!
    
    var dogIndex = 0
    var catIndex = 0
    var rabbitIndex = 0
    var turtleIndex = 0
    
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
                turtleIndex += 1
            }
        }
        
        let result = max(dogIndex, catIndex, rabbitIndex, turtleIndex)
        switch result {
        case dogIndex:
            resultType.text = "Вы - \(AnimalType.dog.rawValue)!"
            resultDefinition.text = AnimalType.dog.definition
        case catIndex:
            resultType.text = "Вы - \(AnimalType.cat.rawValue)!"
            resultDefinition.text = AnimalType.cat.definition
        case rabbitIndex:
            resultType.text = "Вы - \(AnimalType.rabbit.rawValue)!"
            resultDefinition.text = AnimalType.rabbit.definition
        case turtleIndex:
            resultType.text = "Вы - \(AnimalType.turtle.rawValue)!"
            resultDefinition.text = AnimalType.turtle.definition
        default:
            break
        }
    }
}
