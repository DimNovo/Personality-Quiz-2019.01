//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Dmitry Novosyolov on 16/01/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var answers: [Answer]? {
        didSet {
            print(#function, answers ?? "nil")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
