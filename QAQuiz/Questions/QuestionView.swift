//
//  QuestionView.swift
//  QAQuiz
//
//  Created by User on 11.07.2023.
//

import SwiftUI

struct QuestionView: View {
    @ObservedObject var viewModel = QuestionsViewModel()
    @State private var result = ""
    @State private var color = Color.green
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text(viewModel.title)
            Text(viewModel.questionsBrain.currentQuestion)
            ForEach(viewModel.answers, id: \.self) { answer in
                VStack(alignment: .leading) {
                    Button(action: {
                        let answer = viewModel.checkAnswer(answer: answer)
                        result = answer ? "Правильный ответ":"Неправильный ответ"
                        color = answer ? .green : .red
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            result = ""
                        }
                    }) {
                        Text(answer)
                    }
                    if viewModel.answers.last != answer {
                        Divider()
                    }
                }
            }
            Text(result)
                .foregroundColor(color)
            
        }
        .padding(.horizontal)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
