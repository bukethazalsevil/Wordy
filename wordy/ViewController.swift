//
//  ViewController.swift
//  wordy
//
//  Created by Buket Hazal Sevil on 15.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
   var wordyBrain = WordyBrain()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = "Find Synonym!"
        updateUI()
        
}
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var wordsLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choise1: UIButton!
    @IBOutlet weak var choise2: UIButton!
    @IBOutlet weak var choise3: UIButton!
    @IBOutlet weak var choise4: UIButton!
    
    
    @IBAction func answerButtons(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let trueWord = wordyBrain.checkAnswer(userAnswer: userAnswer!)
        
        if trueWord{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        wordyBrain.nextWord()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
    }
    
    @objc func updateUI(){
        
        wordsLabel.text = wordyBrain.getActualWord()
        
        let answerChoices = wordyBrain.getAnswer()
        
        choise1.setTitle(answerChoices[0], for: .normal)
        choise2.setTitle(answerChoices[1], for: .normal)
        choise3.setTitle(answerChoices[2], for: .normal)
        choise4.setTitle(answerChoices[3], for: .normal)
        
        progressBar.progress = wordyBrain.getProgress()
        scoreLabel.text = "Score: \(wordyBrain.getScore())"
        
        choise1.backgroundColor = UIColor.clear
        choise2.backgroundColor = UIColor.clear
        choise3.backgroundColor = UIColor.clear
        choise4.backgroundColor = UIColor.clear
        
        
        
    }
}

