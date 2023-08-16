//
//  Question.swift
//  QAQuiz
//
//  Created by User on 11.07.2023.
//

import Foundation
import FirebaseFirestoreSwift
struct Question: Identifiable, Codable {
    @DocumentID var id: String?
    let title: String
    let answers: [String]
    let rightAnswer: String
}


