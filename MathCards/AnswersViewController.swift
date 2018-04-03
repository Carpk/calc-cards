//
//  AnswersViewController.swift
//  MathCards
//
//  Created by Shawn Klein on 3/24/18.
//  Copyright © 2018 Shawn Klein. All rights reserved.
//

import UIKit

class AnswersViewController: UIViewController {
    @IBOutlet weak var answerLabelField: UILabel!
    var answersData: String?
    var correctAnswer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answerLabelField.text = answersData
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
