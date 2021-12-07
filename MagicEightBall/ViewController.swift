//
//  ViewController.swift
//  MagicEightBall
//
//  Created by junhyuk on 2021/06/02.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = [
        "Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same",
        "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later",
        "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no",
        "Absolutely not" ]
    
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        
        // print("Shake Button..!")
        
        // answerLabel.text = "button was tapped"
        
        let randomIndex = Int.random(in: 0..<answers.count)
        
        answerLabel.text = answers[randomIndex]
        
    }
    


}

