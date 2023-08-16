//
//  QuizBeginView.swift
//  QAQuiz
//
//  Created by User on 28.06.2023.
//

import SwiftUI

struct QuizBeginView: View {
    var body: some View {
        VStack {
            Image("Mask group")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 70)
            VStack(alignment: .leading) {
                Text("Duration: 5 min")
                Text("Question per quiz: 7")
                Text("Reward: 30 Gems")
            }
            Text("Start".uppercased())
                .frame(height: 76)
                .frame(maxWidth: .infinity)
                .background(Color("QAPink"))
                .fontWeight(.bold)
                .font(.title)
                .padding(.bottom, 50)
        }
        .foregroundColor(.white)
        .font(.title)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea())
    }
}

struct QuizBeginView_Previews: PreviewProvider {
    static var previews: some View {
        QuizBeginView()
    }
}
