//
//  QuestionsViewModel.swift
//  QAQuiz
//
//  Created by User on 11.07.2023.
//

import Foundation
class QuestionsViewModel: ObservableObject {
    @Published var questionsBrain = QuestionsBrain()
    var answers: [String] {
        questionsBrain.answers
    }
    var count: Int {
        questionsBrain.questions.count
    }
    var currentIndex: Int {
        questionsBrain.currentIndex + 1
    }
    var title: String {
        "Question \(currentIndex) of \(count)"
    }
    func checkAnswer(answer: String = "") -> Bool {
        questionsBrain.checkAnswer(answer: answer)
    }
}
