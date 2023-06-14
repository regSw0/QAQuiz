//
//  ContentView.swift
//  QAQuiz
//
//  Created by User on 07.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Text("QA")
                .font(.custom("Anton-Regular", size: 70))
            Text("Quiz".uppercased())
                .tracking(15)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red).opacity(0.5)
        .background(Image("BG").resizable()
            .ignoresSafeArea()
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
