//
//  ContentView.swift
//  QAQuiz
//
//  Created by User on 07.06.2023.
//

import SwiftUI
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

struct ContentView: View {
    @State var index = 0
    @FirestoreQuery(collectionPath: "questions") var questions: [Question]
    @State private var showingSheet = false
    var body: some View {
        VStack {
            ForEach(questions) { question in
                Text(question.title)
            }
            Text("QA")
                .font(.custom("Anton-Regular", size: 70))
                .onTapGesture {
                    showingSheet.toggle()
                }
            Text("Quiz".uppercased())
                .tracking(15)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red).opacity(0.5)
        .background(Image("BG").resizable()
            .ignoresSafeArea()
        )
        .actionSheet(isPresented: $showingSheet) {
            ActionSheet(title: Text(questions[index].title),
                        message: Text("Pick one"),
                        buttons: [ .default(Text(questions[index].answers[0]))
                                   , .default(Text(questions[index].answers[1]), action: add)
                            , .cancel()
                        ])
        }
    }
    func add() {
        index += 1
        print(index)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Question: Identifiable, Codable {
    @DocumentID var id: String?
    let title: String
    let answers: [String]
    let rightAnswer: String
}
