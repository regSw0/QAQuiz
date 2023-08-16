//
//  SignUpView.swift
//  QAQuiz
//
//  Created by User on 09.08.2023.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()
    var body: some View {
            ZStack (alignment: .top) {
                //Rectangle 1
                Rectangle()
                    .fill(RadialGradient(
                            gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 0.24705882370471954, green: 0.21176470816135406, blue: 0.30588236451148987, alpha: 1)), location: 0.44855690002441406),
                        .init(color: Color(#colorLiteral(red: 0.6352941393852234, green: 0.1764705926179886, blue: 0.30588236451148987, alpha: 1)), location: 0.8555047512054443)]),
                            center: UnitPoint(x: 0.527777825813802, y: -0.1124999420025532),
                            startRadius: 2.620008560612595,
                            endRadius: 262.0211900584122
                          ))
                Image("QuestionMarkPicture")
                    .resizable()
                    .scaledToFill()
                Image("QuestionMarkWhiteLabel")
                    .resizable()
                    .scaledToFit()
                if viewModel.step1 {
                    Step1View()
                        .environmentObject(viewModel)
                } else {
                    Step2View()
                        .environmentObject(viewModel)
                }
               //     .frame(maxHeight: .infinity)
            }
            .ignoresSafeArea()
            .overlay (alignment: .bottom){
                Button(action: viewModel.signUp) {
                    Text("Ok")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(height: 80)
                        .frame(maxWidth: .infinity)
                        .background(Color("ColorPink"))
                    .offset(y: -40)
                }
                //                Rectangle()
//                    .fill(Color("ColorPink"))
                   
            }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
