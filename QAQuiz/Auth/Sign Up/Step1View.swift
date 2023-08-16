//
//  Step1View.swift
//  QAQuiz
//
//  Created by User on 09.08.2023.
//

import SwiftUI

struct Step1View: View {
    @EnvironmentObject var viewModel: SignUpViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sign up")
                .font(.system(size: 43))
            Text("Step 1 of 2:")
            Spacer()
            AuthTextField(placeHolder: "First name", text: $viewModel.firstName)
            AuthTextField(placeHolder: "Last name", text: $viewModel.lastName)
            AuthTextField(placeHolder: "Mobile", text: $viewModel.mobile)
            AuthTextField(placeHolder: "Email", text: $viewModel.email)
        }
        .font(.system(size: 18))
        .foregroundStyle(.white)
        .padding(.top, 38)
        .padding(.horizontal, 23)
        .padding(.bottom, 23)
        .frame(width: 296, height: 372)
        .background(Color.black.opacity(0.7))
        .cornerRadius(43)
        
    }
}

struct Step1View_Previews: PreviewProvider {
    static var previews: some View {
        Step1View()
            .environmentObject(SignUpViewModel())
    }
}
