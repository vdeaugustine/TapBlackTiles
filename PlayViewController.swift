//
//  ViewController.swift
//  WhiteTiles
//
//  Created by Vincent DeAugustine on 3/17/19.
//  Copyright © 2019 Vincent DeAugustine. All rights reserved.
//

import UIKit
import QuartzCore
import CoreGraphics

class PlayViewController: UIViewController {

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Mark:
    @IBOutlet var WhiteTile1: UIButton!
    @IBOutlet var WhiteTile2: UIButton!
    @IBOutlet var WhiteTile3: UIButton!
    @IBOutlet var WhiteTile4: UIButton!
    @IBOutlet var WhiteTile5: UIButton!
    @IBOutlet var WhiteTile6: UIButton!
    @IBOutlet var WhiteTile7: UIButton!
    @IBOutlet var WhiteTile8: UIButton!
    @IBOutlet var WhiteTile9: UIButton!
    @IBOutlet var WhiteTile10: UIButton!
    @IBOutlet var WhiteTile11: UIButton!
    @IBOutlet var WhiteTile12: UIButton!
    @IBOutlet var WhiteTile13: UIButton!
    @IBOutlet var WhiteTile14: UIButton!
    @IBOutlet var WhiteTile15: UIButton!
    
    @IBOutlet var BlackTile1: UIButton!
    @IBOutlet var BlackTile2: UIButton!
    @IBOutlet var BlackTile3: UIButton!
    @IBOutlet var BlackTile4: UIButton!
    @IBOutlet var BlackTile5: UIButton!
    
    
    
    
    var Score: Int = 0
    var HighScore: Int = 0
    var scoreLabel = UILabel()
    
    
    @IBAction func whiteOneTapped(_ sender: Any) {
        makeGameOver()
    }
    
    @IBAction func whiteTwoTapped(_ sender: Any) {
        makeGameOver()
    }
    
    @IBAction func whiteThreeTapped(_ sender: Any) {
        makeGameOver()
    }
    @IBAction func whiteFourTapped(_ sender: Any) {
        makeGameOver()
    }
    @IBAction func whiteFiveTapped(_ sender: Any) {
        makeGameOver()
       
    }
    @IBAction func whiteSixTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteSevenTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteEightTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteNineTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteTenTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteElevenTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteTwelveTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteThirteenTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteFourteenTapped(_ sender: Any) {
        makeGameOver()
        
    }
    @IBAction func whiteFifteenTapped(_ sender: Any) {
        makeGameOver()
        
    }
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Score = 0
        let ScoreDefault = UserDefaults.standard
        ScoreDefault.setValue(Score, forKey: "TempScore")
        
        let HighScoreDefault = UserDefaults.standard
        
        if (HighScoreDefault.value(forKey: "Highscore") != nil) {
            HighScore = HighScoreDefault.value(forKey: "Highscore") as! NSInteger
            print("High Score: \(HighScore)")
        }
        else {
            HighScore = 0
        }
        
        scoreLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 30))
        scoreLabel.center = CGPoint(x: (self.view.frame.width / 2) + 20, y: 30)
        scoreLabel.textColor = UIColor.red
        scoreLabel.font = UIFont.boldSystemFont(ofSize: 40)
        scoreLabel.text = "\(Score)"
        self.view.addSubview(scoreLabel)
        RandomPlacementOne()
        RandomPlacementTwo()
        RandomPlacementThree()
        RandomPlacementFour()
        RandomPlacementFive()
        
        
        
        
        WhiteTile1.layer.borderColor = UIColor.black.cgColor
        WhiteTile1.layer.borderWidth = 0.5
        
        WhiteTile2.layer.borderColor = UIColor.black.cgColor
        WhiteTile2.layer.borderWidth = 0.5
        
        WhiteTile3.layer.borderColor = UIColor.black.cgColor
        WhiteTile3.layer.borderWidth = 0.5
        
        WhiteTile4.layer.borderColor = UIColor.black.cgColor
        WhiteTile4.layer.borderWidth = 0.5
        
        WhiteTile5.layer.borderColor = UIColor.black.cgColor
        WhiteTile5.layer.borderWidth = 0.5
        
        WhiteTile6.layer.borderColor = UIColor.black.cgColor
        WhiteTile6.layer.borderWidth = 0.5
        
        WhiteTile7.layer.borderColor = UIColor.black.cgColor
        WhiteTile7.layer.borderWidth = 0.5
        
        WhiteTile8.layer.borderColor = UIColor.black.cgColor
        WhiteTile8.layer.borderWidth = 0.5
        
        
        WhiteTile9.layer.borderColor = UIColor.black.cgColor
        WhiteTile9.layer.borderWidth = 0.5
        
        WhiteTile10.layer.borderColor = UIColor.black.cgColor
        WhiteTile10.layer.borderWidth = 0.5
        
        WhiteTile11.layer.borderColor = UIColor.black.cgColor
        WhiteTile11.layer.borderWidth = 0.5
        
        WhiteTile12.layer.borderColor = UIColor.black.cgColor
        WhiteTile12.layer.borderWidth = 0.5
        
        WhiteTile13.layer.borderColor = UIColor.black.cgColor
        WhiteTile13.layer.borderWidth = 0.5
        
        WhiteTile14.layer.borderColor = UIColor.black.cgColor
        WhiteTile14.layer.borderWidth = 0.5
        
        WhiteTile15.layer.borderColor = UIColor.black.cgColor
        WhiteTile15.layer.borderWidth = 0.5
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
    }

    
    
    @IBAction func FirstDown(_ sender: Any) {
        
        
        let HighScoreDefault = UserDefaults.standard
        
        
        Score += 1
        
//        let ScoreDefault = UserDefaults.standard
//        ScoreDefault.setValue(Score, forKey: "TempScore")
        scoreLabel.text = "\(Score)"
        print("\(Score)")
        
        if Score > HighScore {
            
            HighScore = Score
            HighScoreDefault.setValue(Score, forKey: "Highscore")
            print("High Score: \(HighScore)")
            
        }
        
        WhiteTile1.center.y = WhiteTile1.center.y + 184
        WhiteTile2.center.y = WhiteTile2.center.y + 184
        WhiteTile3.center.y = WhiteTile3.center.y + 184
        WhiteTile4.center.y = WhiteTile4.center.y + 184
        WhiteTile5.center.y = WhiteTile5.center.y + 184
        WhiteTile6.center.y = WhiteTile6.center.y + 184
        WhiteTile7.center.y = WhiteTile7.center.y + 184
        WhiteTile8.center.y = WhiteTile8.center.y + 184
        WhiteTile9.center.y = WhiteTile9.center.y + 184
        WhiteTile10.center.y = WhiteTile10.center.y + 184
        WhiteTile11.center.y = WhiteTile11.center.y + 184
        WhiteTile12.center.y = WhiteTile12.center.y + 184
        WhiteTile13.center.y = WhiteTile13.center.y + 184
        WhiteTile14.center.y = WhiteTile14.center.y + 184
        WhiteTile15.center.y = WhiteTile15.center.y + 184
        
        
        BlackTile1.center.y = BlackTile1.center.y + 184
        BlackTile2.center.y = BlackTile2.center.y + 184
        BlackTile3.center.y = BlackTile3.center.y + 184
        BlackTile4.center.y = BlackTile4.center.y + 184
        BlackTile5.center.y = BlackTile5.center.y + 184
        
        if BlackTile1.center.y >= 828 {
            BlackTile1.center.y = -92
            WhiteTile1.center.y = -92
            WhiteTile2.center.y = -92
            WhiteTile3.center.y = -92
            RandomPlacementOne()
        }
        if BlackTile2.center.y >= 828 {
            BlackTile2.center.y = -92
            WhiteTile4.center.y = -92
            WhiteTile5.center.y = -92
            WhiteTile6.center.y = -92
            RandomPlacementTwo()
        }
        if BlackTile3.center.y >= 828 {
            BlackTile3.center.y = -92
            WhiteTile7.center.y = -92
            WhiteTile8.center.y = -92
            WhiteTile9.center.y = -92
            RandomPlacementThree()
        }
        if BlackTile4.center.y >= 828 {
            BlackTile4.center.y = -92
            WhiteTile10.center.y = -92
            WhiteTile11.center.y = -92
            WhiteTile12.center.y = -92
            RandomPlacementFour()
            
        }
        if BlackTile5.center.y >= 828 {
            BlackTile5.center.y = -92
            WhiteTile13.center.y = -92
            WhiteTile14.center.y = -92
            WhiteTile15.center.y = -92
            RandomPlacementFive()
        }
        
        let ScoreDefault = UserDefaults.standard
        ScoreDefault.setValue(Score, forKey: "TempScore")
        
    }
    
    
    @IBAction func SecondDown(_ sender: Any) {
        
        let HighScoreDefault = UserDefaults.standard
        
        Score += 1
        
        scoreLabel.text = "\(Score)"
        print("\(Score)")
        
        if Score > HighScore {
            
            HighScore = Score
            HighScoreDefault.setValue(Score, forKey: "Highscore")
            print("High Score: \(HighScore)")
            
        }
        
        
        WhiteTile1.center.y = WhiteTile1.center.y + 184
        WhiteTile2.center.y = WhiteTile2.center.y + 184
        WhiteTile3.center.y = WhiteTile3.center.y + 184
        WhiteTile4.center.y = WhiteTile4.center.y + 184
        WhiteTile5.center.y = WhiteTile5.center.y + 184
        WhiteTile6.center.y = WhiteTile6.center.y + 184
        WhiteTile7.center.y = WhiteTile7.center.y + 184
        WhiteTile8.center.y = WhiteTile8.center.y + 184
        WhiteTile9.center.y = WhiteTile9.center.y + 184
        WhiteTile10.center.y = WhiteTile10.center.y + 184
        WhiteTile11.center.y = WhiteTile11.center.y + 184
        WhiteTile12.center.y = WhiteTile12.center.y + 184
        WhiteTile13.center.y = WhiteTile13.center.y + 184
        WhiteTile14.center.y = WhiteTile14.center.y + 184
        WhiteTile15.center.y = WhiteTile15.center.y + 184
        
        
        BlackTile1.center.y = BlackTile1.center.y + 184
        BlackTile2.center.y = BlackTile2.center.y + 184
        BlackTile3.center.y = BlackTile3.center.y + 184
        BlackTile4.center.y = BlackTile4.center.y + 184
        BlackTile5.center.y = BlackTile5.center.y + 184
        
        if BlackTile1.center.y >= 828 {
            BlackTile1.center.y = -92
            WhiteTile1.center.y = -92
            WhiteTile2.center.y = -92
            WhiteTile3.center.y = -92
            RandomPlacementOne()
        }
        if BlackTile2.center.y >= 828 {
            BlackTile2.center.y = -92
            WhiteTile4.center.y = -92
            WhiteTile5.center.y = -92
            WhiteTile6.center.y = -92
            RandomPlacementTwo()
        }
        if BlackTile3.center.y >= 828 {
            BlackTile3.center.y = -92
            WhiteTile7.center.y = -92
            WhiteTile8.center.y = -92
            WhiteTile9.center.y = -92
            RandomPlacementThree()
        }
        if BlackTile4.center.y >= 828 {
            BlackTile4.center.y = -92
            WhiteTile10.center.y = -92
            WhiteTile11.center.y = -92
            WhiteTile12.center.y = -92
            RandomPlacementFour()
            
        }
        if BlackTile5.center.y >= 828 {
            BlackTile5.center.y = -92
            WhiteTile13.center.y = -92
            WhiteTile14.center.y = -92
            WhiteTile15.center.y = -92
            RandomPlacementFive()
        }
        
        let ScoreDefault = UserDefaults.standard
        ScoreDefault.setValue(Score, forKey: "TempScore")
        
    }
    
    @IBAction func ThirdDown(_ sender: Any) {
        
        let HighScoreDefault = UserDefaults.standard
        
        Score += 1
        
        scoreLabel.text = "\(Score)"
        print("\(Score)")
        
        if Score > HighScore {
            
            HighScore = Score
            HighScoreDefault.setValue(Score, forKey: "Highscore")
            print("High Score: \(HighScore)")
            
        }
        
        WhiteTile1.center.y = WhiteTile1.center.y + 184
        WhiteTile2.center.y = WhiteTile2.center.y + 184
        WhiteTile3.center.y = WhiteTile3.center.y + 184
        WhiteTile4.center.y = WhiteTile4.center.y + 184
        WhiteTile5.center.y = WhiteTile5.center.y + 184
        WhiteTile6.center.y = WhiteTile6.center.y + 184
        WhiteTile7.center.y = WhiteTile7.center.y + 184
        WhiteTile8.center.y = WhiteTile8.center.y + 184
        WhiteTile9.center.y = WhiteTile9.center.y + 184
        WhiteTile10.center.y = WhiteTile10.center.y + 184
        WhiteTile11.center.y = WhiteTile11.center.y + 184
        WhiteTile12.center.y = WhiteTile12.center.y + 184
        WhiteTile13.center.y = WhiteTile13.center.y + 184
        WhiteTile14.center.y = WhiteTile14.center.y + 184
        WhiteTile15.center.y = WhiteTile15.center.y + 184
        
        
        BlackTile1.center.y = BlackTile1.center.y + 184
        BlackTile2.center.y = BlackTile2.center.y + 184
        BlackTile3.center.y = BlackTile3.center.y + 184
        BlackTile4.center.y = BlackTile4.center.y + 184
        BlackTile5.center.y = BlackTile5.center.y + 184
        
        
        if BlackTile1.center.y >= 828 {
            BlackTile1.center.y = -92
            WhiteTile1.center.y = -92
            WhiteTile2.center.y = -92
            WhiteTile3.center.y = -92
            RandomPlacementOne()
        }
        if BlackTile2.center.y >= 828 {
            BlackTile2.center.y = -92
            WhiteTile4.center.y = -92
            WhiteTile5.center.y = -92
            WhiteTile6.center.y = -92
            RandomPlacementTwo()
        }
        if BlackTile3.center.y >= 828 {
            BlackTile3.center.y = -92
            WhiteTile7.center.y = -92
            WhiteTile8.center.y = -92
            WhiteTile9.center.y = -92
            RandomPlacementThree()
        }
        if BlackTile4.center.y >= 828 {
            BlackTile4.center.y = -92
            WhiteTile10.center.y = -92
            WhiteTile11.center.y = -92
            WhiteTile12.center.y = -92
            RandomPlacementFour()
            
        }
        if BlackTile5.center.y >= 828 {
            BlackTile5.center.y = -92
            WhiteTile13.center.y = -92
            WhiteTile14.center.y = -92
            WhiteTile15.center.y = -92
            RandomPlacementFive()
        }
        
        let ScoreDefault = UserDefaults.standard
        ScoreDefault.setValue(Score, forKey: "TempScore")
        
    }
    
    @IBAction func FourthDown(_ sender: Any) {
        
        
        let HighScoreDefault = UserDefaults.standard
        
        Score += 1
        
        scoreLabel.text = "\(Score)"
        print("\(Score)")
        
        if Score > HighScore {
            
            HighScore = Score
            HighScoreDefault.setValue(Score, forKey: "Highscore")
            print("High Score: \(HighScore)")
            
        }
        
        
        WhiteTile1.center.y = WhiteTile1.center.y + 184
        WhiteTile2.center.y = WhiteTile2.center.y + 184
        WhiteTile3.center.y = WhiteTile3.center.y + 184
        WhiteTile4.center.y = WhiteTile4.center.y + 184
        WhiteTile5.center.y = WhiteTile5.center.y + 184
        WhiteTile6.center.y = WhiteTile6.center.y + 184
        WhiteTile7.center.y = WhiteTile7.center.y + 184
        WhiteTile8.center.y = WhiteTile8.center.y + 184
        WhiteTile9.center.y = WhiteTile9.center.y + 184
        WhiteTile10.center.y = WhiteTile10.center.y + 184
        WhiteTile11.center.y = WhiteTile11.center.y + 184
        WhiteTile12.center.y = WhiteTile12.center.y + 184
        WhiteTile13.center.y = WhiteTile13.center.y + 184
        WhiteTile14.center.y = WhiteTile14.center.y + 184
        WhiteTile15.center.y = WhiteTile15.center.y + 184
        
        
        BlackTile1.center.y = BlackTile1.center.y + 184
        BlackTile2.center.y = BlackTile2.center.y + 184
        BlackTile3.center.y = BlackTile3.center.y + 184
        BlackTile4.center.y = BlackTile4.center.y + 184
        BlackTile5.center.y = BlackTile5.center.y + 184
        
        
        if BlackTile1.center.y >= 828 {
            BlackTile1.center.y = -92
            WhiteTile1.center.y = -92
            WhiteTile2.center.y = -92
            WhiteTile3.center.y = -92
            RandomPlacementOne()
        }
        if BlackTile2.center.y >= 828 {
            BlackTile2.center.y = -92
            WhiteTile4.center.y = -92
            WhiteTile5.center.y = -92
            WhiteTile6.center.y = -92
            RandomPlacementTwo()
        }
        if BlackTile3.center.y >= 828 {
            BlackTile3.center.y = -92
            WhiteTile7.center.y = -92
            WhiteTile8.center.y = -92
            WhiteTile9.center.y = -92
            RandomPlacementThree()
        }
        if BlackTile4.center.y >= 828 {
            BlackTile4.center.y = -92
            WhiteTile10.center.y = -92
            WhiteTile11.center.y = -92
            WhiteTile12.center.y = -92
            RandomPlacementFour()
            
        }
        if BlackTile5.center.y >= 828 {
            BlackTile5.center.y = -92
            WhiteTile13.center.y = -92
            WhiteTile14.center.y = -92
            WhiteTile15.center.y = -92
            RandomPlacementFive()
        }
        
        
        let ScoreDefault = UserDefaults.standard
        ScoreDefault.setValue(Score, forKey: "TempScore")
        
    }
    
    @IBAction func FifthDown(_ sender: Any) {
        
        let HighScoreDefault = UserDefaults.standard
        
        
        Score += 1
        scoreLabel.text = "\(Score)"
        print("\(Score)")
        
        if Score > HighScore {
            
            HighScore = Score
            HighScoreDefault.setValue(Score, forKey: "Highscore")
            print("High Score: \(HighScore)")
            
        }
        
        WhiteTile1.center.y = WhiteTile1.center.y + 184
        WhiteTile2.center.y = WhiteTile2.center.y + 184
        WhiteTile3.center.y = WhiteTile3.center.y + 184
        WhiteTile4.center.y = WhiteTile4.center.y + 184
        WhiteTile5.center.y = WhiteTile5.center.y + 184
        WhiteTile6.center.y = WhiteTile6.center.y + 184
        WhiteTile7.center.y = WhiteTile7.center.y + 184
        WhiteTile8.center.y = WhiteTile8.center.y + 184
        WhiteTile9.center.y = WhiteTile9.center.y + 184
        WhiteTile10.center.y = WhiteTile10.center.y + 184
        WhiteTile11.center.y = WhiteTile11.center.y + 184
        WhiteTile12.center.y = WhiteTile12.center.y + 184
        WhiteTile13.center.y = WhiteTile13.center.y + 184
        WhiteTile14.center.y = WhiteTile14.center.y + 184
        WhiteTile15.center.y = WhiteTile15.center.y + 184
        
        
        BlackTile1.center.y = BlackTile1.center.y + 184
        BlackTile2.center.y = BlackTile2.center.y + 184
        BlackTile3.center.y = BlackTile3.center.y + 184
        BlackTile4.center.y = BlackTile4.center.y + 184
        BlackTile5.center.y = BlackTile5.center.y + 184
        
        
        if BlackTile1.center.y >= 828 {
            BlackTile1.center.y = -92
            WhiteTile1.center.y = -92
            WhiteTile2.center.y = -92
            WhiteTile3.center.y = -92
            RandomPlacementOne()
        }
        if BlackTile2.center.y >= 828 {
            BlackTile2.center.y = -92
            WhiteTile4.center.y = -92
            WhiteTile5.center.y = -92
            WhiteTile6.center.y = -92
            RandomPlacementTwo()
        }
        if BlackTile3.center.y >= 828 {
            BlackTile3.center.y = -92
            WhiteTile7.center.y = -92
            WhiteTile8.center.y = -92
            WhiteTile9.center.y = -92
            RandomPlacementThree()
        }
        if BlackTile4.center.y >= 828 {
            BlackTile4.center.y = -92
            WhiteTile10.center.y = -92
            WhiteTile11.center.y = -92
            WhiteTile12.center.y = -92
            RandomPlacementFour()
            
        }
        if BlackTile5.center.y >= 828 {
            BlackTile5.center.y = -92
            WhiteTile13.center.y = -92
            WhiteTile14.center.y = -92
            WhiteTile15.center.y = -92
            RandomPlacementFive()
        }
        
        
        let ScoreDefault = UserDefaults.standard
        ScoreDefault.setValue(Score, forKey: "TempScore")
        
    }
    
    func MoveDown () {
        // Move all tiles down
        // Score keeping
    }

    
    func EndGame () {
        // End the game function
    }
    
    
    func RandomPlacementOne () {
        
        let RandomNumber = Int.random(in: 0...3)
        switch RandomNumber {
        
        case 0:
            BlackTile1.center.x = 52
            WhiteTile1.center.x = 156
            WhiteTile2.center.x = 260
            WhiteTile3.center.x = 364
            
        case 1:
            BlackTile1.center.x = 156
            WhiteTile1.center.x = 52
            WhiteTile2.center.x = 260
            WhiteTile3.center.x = 364
        case 2:
            BlackTile1.center.x = 260
            WhiteTile1.center.x = 156
            WhiteTile2.center.x = 52
            WhiteTile3.center.x = 364
        case 3:
            BlackTile1.center.x = 364
            WhiteTile1.center.x = 156
            WhiteTile2.center.x = 260
            WhiteTile3.center.x = 52
        default:
            break
            
        }
    }
    
    func RandomPlacementTwo () {
        
        let RandomNumber = Int.random(in: 0...3)
        switch RandomNumber {
            
        case 0:
            BlackTile2.center.x = 52
            WhiteTile4.center.x = 156
            WhiteTile5.center.x = 260
            WhiteTile6.center.x = 364
            
        case 1:
            BlackTile2.center.x = 156
            WhiteTile4.center.x = 52
            WhiteTile5.center.x = 260
            WhiteTile6.center.x = 364
        case 2:
            BlackTile2.center.x = 260
            WhiteTile4.center.x = 156
            WhiteTile5.center.x = 52
            WhiteTile6.center.x = 364
        case 3:
            BlackTile2.center.x = 364
            WhiteTile4.center.x = 156
            WhiteTile5.center.x = 260
            WhiteTile6.center.x = 52
        default:
            break
            
        }
    }
    
    
    func RandomPlacementThree () {
        
        let RandomNumber = Int.random(in: 0...3)
        switch RandomNumber {
            
        case 0:
            BlackTile3.center.x = 52
            WhiteTile7.center.x = 156
            WhiteTile8.center.x = 260
            WhiteTile9.center.x = 364
            
        case 1:
            BlackTile3.center.x = 156
            WhiteTile7.center.x = 52
            WhiteTile8.center.x = 260
            WhiteTile9.center.x = 364
        case 2:
            BlackTile3.center.x = 260
            WhiteTile7.center.x = 156
            WhiteTile8.center.x = 52
            WhiteTile9.center.x = 364
        case 3:
            BlackTile3.center.x = 364
            WhiteTile7.center.x = 156
            WhiteTile8.center.x = 260
            WhiteTile9.center.x = 52
        default:
            break
            
        }
    }
    
    func RandomPlacementFour () {
        
        let RandomNumber = Int.random(in: 0...3)
        switch RandomNumber {
            
        case 0:
            BlackTile4.center.x = 52
            WhiteTile10.center.x = 156
            WhiteTile11.center.x = 260
            WhiteTile12.center.x = 364
            
        case 1:
            BlackTile4.center.x = 156
            WhiteTile10.center.x = 52
            WhiteTile11.center.x = 260
            WhiteTile12.center.x = 364
        case 2:
            BlackTile4.center.x = 260
            WhiteTile10.center.x = 156
            WhiteTile11.center.x = 52
            WhiteTile12.center.x = 364
        case 3:
            BlackTile4.center.x = 364
            WhiteTile10.center.x = 156
            WhiteTile11.center.x = 260
            WhiteTile12.center.x = 52
        default:
            break
            
        }
    }
    
    func RandomPlacementFive () {
        
        let RandomNumber = Int.random(in: 0...3)
        switch RandomNumber {
            
        case 0:
            BlackTile5.center.x = 52
            WhiteTile13.center.x = 156
            WhiteTile14.center.x = 260
            WhiteTile15.center.x = 364
            
        case 1:
            BlackTile5.center.x = 156
            WhiteTile15.center.x = 52
            WhiteTile13.center.x = 260
            WhiteTile14.center.x = 364
        case 2:
            BlackTile5.center.x = 260
            WhiteTile15.center.x = 156
            WhiteTile13.center.x = 52
            WhiteTile14.center.x = 364
        case 3:
            BlackTile5.center.x = 364
            WhiteTile15.center.x = 156
            WhiteTile13.center.x = 260
            WhiteTile14.center.x = 52
        default:
            break
            
        }
    }
    
    
    func makeGameOver () {
        // Stop Moving Tiles
        // Go to Game Over Screen
        
        print("running makeGameOver")
        
        // make all numbers 0
        
        Score = 0
        scoreLabel.text = "\(Score)"
        
        
        
    }
    
   
}

