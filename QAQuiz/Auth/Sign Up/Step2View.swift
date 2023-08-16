//
//  Step2View.swift
//  QAQuiz
//
//  Created by User on 16.08.2023.
//

import SwiftUI

struct Step2View: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Sign Up")
            Text("STEP 2 of 2:")
            Text("Registration fee")
            HStack {
                Text("Payment")
                Spacer()
                Text("100 Gems")
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .background(Capsule().fill(Color.pink))
            }
            Rectangle()
                .frame(height: 1.5)
            Text("Benefits")
            HStack {
            Text("Unlimited quiz")
            }
            Text("Bonus Gems")
            Text("Offers for In App CNContactStore")
            Text("1 week free trial")
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

struct Step2View_Previews: PreviewProvider {
    static var previews: some View {
        Step2View()
    }
}
