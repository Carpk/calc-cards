//
//  ViewController.swift
//  MathCards
//
//  Created by Shawn Klein on 3/24/18.
//  Copyright © 2018 Shawn Klein. All rights reserved.
//

import UIKit
import iosMath

class ViewController: UIViewController {
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var answerD: UIButton!
    var randomKey = ""
    
    var answerIsCorrect = false
    var correctAnswer = "sin 𝑢 + 𝑐"
    var cardTable = ["∫ cos 𝑢 𝑑𝑢": ["sin 𝑢 + 𝑐","-sin 𝑢 + 𝑐", "-cos 𝑢 + 𝑐","tan 𝑢 + 𝑐"],
                     "∫ sin 𝑢 𝑑𝑢": ["-cos 𝑢 + 𝑐","sin 𝑢 + 𝑐", "tan 𝑢 + 𝑐", "cos 𝑢 + 𝑐"],
                     "∫ -cos 𝑢 𝑑𝑢":["-sin 𝑢 + 𝑐","sin 𝑢 + 𝑐", "-cos 𝑢 + 𝑐","tan 𝑢 + 𝑐"],
                     "∫ -sin 𝑢 𝑑𝑢":["cos 𝑢 + 𝑐","sin 𝑢 + 𝑐", "tan 𝑢 + 𝑐", "-cos 𝑢 + 𝑐"],
                     "∫ sec² 𝑢 𝑑𝑢":["tan 𝑢 + 𝑐", "-cos 𝑢 + 𝑐","cos 𝑢 + 𝑐", "cot 𝑢 + 𝑐"],
                     "d⁄dx(sin 𝑥)":[   "cos 𝑥",      "sec 𝑥",   "-cos 𝑥",     "csc 𝑥"],
                     "d⁄dx(cos 𝑥)":[  "-sin 𝑥",      "sin 𝑥",    "sec 𝑥",     "csc 𝑥"],
                     "d⁄dx(tan 𝑥)":[  "sec² 𝑥", "sec 𝑥 tan 𝑥",  "csc² 𝑥","-csc 𝑥 cot 𝑥"],
                     "d⁄dx(sec 𝑥)":[ "sec 𝑥 tan 𝑥",  "csc² 𝑥",  "sec² 𝑥","-csc 𝑥 cot 𝑥"],
                     "d⁄dx(csc 𝑥)":["-csc 𝑥 cot 𝑥","sec 𝑥 tan 𝑥", "csc² 𝑥",   "sec² 𝑥"],
                     "d⁄dx(cot 𝑥)":[   "csc² 𝑥", "-csc 𝑥 cot 𝑥","sec² 𝑥","sec 𝑥 tan 𝑥"]]
    
    @IBAction func guessA(_ sender: UIButton) {
        if (answerA.titleLabel?.text == correctAnswer) {answerIsCorrect = true}
    }
    @IBAction func guessB(_ sender: UIButton) {
        if (answerB.titleLabel?.text == correctAnswer) {answerIsCorrect = true}
    }
    @IBAction func guessC(_ sender: UIButton) {
        if (answerC.titleLabel?.text == correctAnswer) {answerIsCorrect = true }
    }
    @IBAction func guessD(_ sender: UIButton) {
        if (answerD.titleLabel?.text == correctAnswer) {answerIsCorrect = true}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomKey = Array(cardTable.keys)[Int(arc4random_uniform(UInt32(cardTable.count)))]
        correctAnswer = cardTable[randomKey]![0]
        
        question.text = randomKey
        var ansArray = cardTable[randomKey]
        
        //answerA.setTitle(cardTable[randomKey]!.remove(at: Int(arc4random_uniform(UInt32(cardTable[randomKey]!.count)))), for: .normal)

        
        for ansButton in [answerA, answerB, answerC, answerD] {
            ansButton?.setTitle(ansArray!.remove(at: Int(arc4random_uniform(UInt32(ansArray!.count)))), for: .normal)
        }
        
        //answerA.setTitle(ansArray!.remove(at: Int(arc4random_uniform(UInt32(ansArray!.count)))), for: .normal)

        
        let yourLabel: MTMathUILabel = MTMathUILabel()
        yourLabel.latex = "x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}"
        yourLabel.sizeToFit()
        
        //answerD.setTitle( yourLabel.latex, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let answersController = segue.destination as! AnswersViewController
        answersController.answerIsCorrect = answerIsCorrect
        answersController.correctAnswer = correctAnswer
    }

}

// ∫ 𝑘 𝑢 𝑑𝑢 𝑥 𝑑𝑥 ⁿ √ ² ⁄ 𝑐

