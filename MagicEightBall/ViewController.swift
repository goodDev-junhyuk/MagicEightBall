//
//  ViewController.swift
//  MagicEightBall
//
//  Created by junhyuk on 2021/06/02.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let secondAnswers = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"
    ]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        
        // print("Shake Button..!")
        // answerLabel.text = "button was tapped"
        // let randomIndex = Int.random(in: 0..<answers.count)
        // answerLabel.text = answers[randomIndex]
        
        generateAnswer()
        secondGenerateAnswer()
        
    }
    
    // MARK : 기기를 흔들었을때 화면 텍스트가 무작위로 변하게 하는 기능구현
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        // let randomIndex = Int.random(in: 0..<answers.count)
        // answerLabel.text = answers[randomIndex]
        
        generateAnswer()
        secondGenerateAnswer()
    }

    func generateAnswer() {
        
        let randomIndex = Int.random(in: 0..<answers.count)
        answerLabel.text = answers[randomIndex]
    }
    
    func secondGenerateAnswer() {
        
        
        let randomIndex = Int.random(in: 0..<secondAnswers.count)
        secondLabel.text = secondAnswers[randomIndex]
        
        
    }
    
    
    


}

