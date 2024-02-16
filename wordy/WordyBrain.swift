//
//  WordyBrain.swift
//  wordy
//
//  Created by Buket Hazal Sevil on 15.02.2024.
//

import Foundation
import UIKit

struct WordyBrain{
    
    var wordNumber = 0
    var score = 0
    
    let words = [
        
        Words(aW: "prospect", sW: "possibility", a:["calculation","projection", "possibility","suspense"]),
        Words(aW: "inconvenient", sW: "troublesome", a: ["troublesome","strange", "awesome", "innovator"]),
        Words(aW: "tremendously", sW: "enormously", a: ["previously","perfectly","slightly","enormously"]),
        Words(aW: "heal", sW: "cure",a:["wound", "cure","break", "inject"]),
        Words(aW: "division", sW: "partition",  a:[ "portion","partition","preparation","participation"]),
        Words(aW: "negligent", sW: "careless",  a:[ "careless","heedy","merciful", "willingness"]),
        Words(aW: "disease", sW: "patient",  a:["moral",  "fix",  "patient", "disorder"]),
        Words(aW: "congestion", sW: "clogging",  a:[ "trafficking","pressing", "clogging", "mending"]),
        Words(aW: "upset", sW: "uneasy",  a:[ "scene", "bred",  "uneasy","border"]),
        Words(aW: "trace", sW: "track", a:["latitude", "track",  "hatred", "evidence"])
    ]
    
    func getActualWord() -> String{
        return words[wordNumber].actualWord
    }
    
    func getAnswer() -> [String]{
        return words[wordNumber].answers
    }
    
    func getProgress() -> Float{
        return Float(wordNumber) / Float(words.count)
    }
    
    func getScore() -> Int{
        return score
    }
    
    mutating func nextWord(){
        
        if (wordNumber + 1) < words.count{
            wordNumber += 1
        }else{
            wordNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        
        if userAnswer == words[wordNumber].synonymWord{
            score += 1
            return true
        }else{
            return false
        }
    }
    
  
    
    
    
}
