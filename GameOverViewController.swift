//
//  GameOverViewController.swift
//  WhiteTiles
//
//  Created by Vincent DeAugustine on 3/18/19.
//  Copyright © 2019 Vincent DeAugustine. All rights reserved.
//

import Foundation
import UIKit

class GameOverViewController: UIViewController {
    
    let ScoreDefault = UserDefaults.standard
    
    
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    override func viewDidLoad() {
        
        print ("Now in viewDidLoad for gameover scene")
        
        print ("The value for tempscore default is \(String(describing: ScoreDefault.value(forKey: "TempScore")))")
        
        let Score = ScoreDefault.value(forKey: "TempScore") as! NSInteger
        let highScore = ScoreDefault.value(forKey: "Highscore") as! NSInteger
        
        
        
        scoreLabel.text = "Score: \(Score)"
        highScoreLabel.text = "High Score: \(highScore)"

        
        
    }
    
    
    
    
}
