//
//  QuestionsBrain.swift
//  QAQuiz
//
//  Created by User on 11.07.2023.
//

import Foundation

struct QuestionsBrain {
    var questions: [Question] = [
        .init(title: "Which of the following are the basic categories of chemical signaling found in multicellular organisms?", answers: ["Paracrine signaling","Autocrine signaling","Endocrine signaling","All of the above"], rightAnswer: "Autocrine signaling"),
        .init(title: "Вопрос 2", answers: ["Paracrine signaling","Autocrine signaling","Endocrine signaling","All of the above"], rightAnswer: "Autocrine signaling"),
        .init(title: "Вопрос 3", answers: ["Paracrine signaling","Autocrine signaling","Endocrine signaling","All of the above"], rightAnswer: "Autocrine signaling"),
        .init(title: "Вопрос 4", answers: ["Paracrine signaling","Autocrine signaling","Endocrine signaling","All of the above"], rightAnswer: "Autocrine signaling")]
    var currentIndex = 0
    var currentQuestion: String {
        questions[currentIndex].title
    }
    var answers: [String] {
        questions[currentIndex].answers
    }
    mutating func checkAnswer(answer: String) -> Bool {
        if answer == questions[currentIndex].rightAnswer {
            return true
        } else {
            return false
        }
    }
}
