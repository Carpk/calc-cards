//
//  AnswersViewController.swift
//  MathCards
//
//  Created by Shawn Klein on 3/24/18.
//  Copyright © 2018 Shawn Klein. All rights reserved.
//

import UIKit
import iosMath

class AnswersViewController: UIViewController {
    @IBOutlet weak var answerLabelField: UILabel!
    @IBOutlet weak var correctAnsLabel: UILabel!
    var answersData: String?
    var correctAnswer: String?
    var answerIsCorrect: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answerLabelField.layer.cornerRadius = 15.0
        answerLabelField.clipsToBounds = true
        if answerIsCorrect! {
            answerLabelField.text = "Correct!"
            answerLabelField.backgroundColor = UIColor(red: 0.14, green: 0.60, blue: 0.14, alpha: 1.0)
        } else {
            answerLabelField.text = "Incorrect."
            answerLabelField.backgroundColor = UIColor(red: 0.9, green: 0.3, blue: 0.3, alpha: 1.0)
            correctAnsLabel.text = "The correct answer was: " + correctAnswer!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
