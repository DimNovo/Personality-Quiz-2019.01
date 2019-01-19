//
//  QuestionData.swift
//  Personality Quiz
//
//  Created by Dmitry Novosyolov on 18/01/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы любите друзей и большие компании. Цените дружбу. На вас можно положиться."
        case .cat:
            return "Вам нравится гулять самому по себе. Вы цените спокойствие."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Мудрость - в последовательном движении к цели. Медленный обгоняет быстрого."
        }
    }
}
