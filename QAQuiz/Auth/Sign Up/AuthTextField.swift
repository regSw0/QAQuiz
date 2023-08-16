//
//  AuthTextField.swift
//  QAQuiz
//
//  Created by User on 09.08.2023.
//

import SwiftUI

struct AuthTextField: View {
    let placeHolder: String
    @Binding var text: String
    var body: some View {
        VStack {
        TextField(placeHolder, text: $text)
            Rectangle()
                .frame(height: 1)
        }
    }
}

struct AuthTextField_Previews: PreviewProvider {
    static var previews: some View {
        AuthTextField(placeHolder: "First name", text: .constant(""))
    }
}
