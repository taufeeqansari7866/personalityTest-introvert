//
//  QuizBrain.swift
//  TopQuiz
//
//  Created by Taufeeq Ansari on 31/03/21.
//

import Foundation

struct QuizBrain {
    
    var result = false
    var questionNumber = 0
    var score = 0
    
let quiz = [
    Question(q: "You are more productive when you are in ?", a: ["In cafe", "In quiet room", "Both of the above"], correctAnswer: "In quiet room"),
    Question(q: " In your free Time on the weekend you would prefer ?", a: ["Partying with unknown people", "Chatting with best friend", "Both of the above"], correctAnswer: "Chatting with best friend"),
    Question(q: "You tend to find talking to new people ?", a: ["Energising", "Awkward", "Both of the above"], correctAnswer: "Awkward"),
    Question(q: "When you meet someone for first time ?", a: ["You do most of  the talking ", "You do most of the listening", "Both of the above"], correctAnswer: "You do most of the listening"),
    Question(q: "In general which of the two are you more likely to feel ?", a: ["Bored & understimulated", "Overwhelmed & overstimulated", "Both of the above"], correctAnswer: "Overwhelmed & overstimulated"),
    Question(q: "The people who know you best are more likely to describe you as someone who’s ?", a: ["Quiet and reflective ", "Outgoing and talkative ", "Both of the above"], correctAnswer: " Quiet and reflective "),
    Question(q: "You would hate working with someone who’s ?", a: ["Brash and overbearing", "Timid and meek ", "Both of the above"], correctAnswer: "brash and overbearing"),
    Question(q: "You usually get more joy out of ?", a: ["Watching a great movie ", "Reading a great book ", "Both of the above"], correctAnswer: "Reading a great book"),
    Question(q: "You feel more yourself when you’re ?", a: ["In the background ", "The centre of attention ", "Both of the above"], correctAnswer: "In the background "),
    Question(q: "You’re more likely to recharge your batteries by ?", a: ["Going out with group of friends ", "Getting some alone time", "Both of the above"], correctAnswer: "Getting some alone time")
]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            result = false
        } else {
            result = true
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getResult() -> Bool {
        return result
    }
    
    func getFinalAssessment() -> String {
        if(score < 5){
            return "You are an extrovert. You tend to be quite outgoing and talkative. You enjoy spending time with other people, feel energized in social situations—extroverts like being the center of attention. People might describe you as friendly and outgoing. You have no problem making new friends. Spending time with others makes you feel energized and inspired."
        }else{
            //Between 6 to 10
            return "You are an introvert. You tend to enjoy solitude and spending time alone. You prefer not to be the center of attention. People might describe you as quiet. You like to spend time with a small group of close friends And family. You get drained after spending a lot of time around people whom you don't know."
        }
    }
}







