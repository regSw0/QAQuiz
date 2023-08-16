//
//  SignUpViewModel.swift
//  QAQuiz
//
//  Created by User on 16.08.2023.
//

import Foundation
class SignUpViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var mobile = ""
    @Published var email = ""
    @Published var step1 = true
    func signUp() {
        step1 = false
    }
}
