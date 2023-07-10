//
//  ViewController.swift
//  TopQuiz
//
//  Created by Taufeeq Ansari on 22/03/21.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizBrain = QuizBrain()
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateUI()
    }
    
    func setupUI () {
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
}

extension QuizViewController {
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        //scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        progressBar.progress = quizBrain.getProgress()
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        
        let result = quizBrain.getResult()
        if result == true {
            performSegue(withIdentifier: "goToResults", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.finalAnswer = quizBrain.getFinalAssessment()
    }
}
