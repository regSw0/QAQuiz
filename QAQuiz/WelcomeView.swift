//
//  WelcomeView.swift
//  QAQuiz
//
//  Created by User on 19.07.2023.
//

import SwiftUI
struct Welcome: View {
    var body: some View {
        VStack {
            Text ("QA Quiz")
            VStack(alignment: .leading) {
                Button("Login with google") {
                    print("Login with google")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Capsule().fill(Color.white))
                Button("Login with facebook") {
                    print("Login with facebook")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Capsule().fill(Color.white))
            }
            .padding(.horizontal, 40)
            .foregroundColor(.black)
            HStack(content: {
                Text("Sign up")
                Text("Forgot password")
            })
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink)
        .font(.custom("Anton-Regular", size: 20))
    }
}
    
struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
