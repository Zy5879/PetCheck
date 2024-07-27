//
//  StartUpView.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/26/24.
//

import SwiftUI

struct StartUpView: View {
    var body: some View {
        VStack {
            Text("🐶")
                .font(.system(size:150))
                .padding(.top,10)
            Text("WELCOME TO PETCHECK")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("Your Companion's Well-Being Simplified ")
                .font(.headline)
                .padding(.top, 5)
            
            Spacer()
            
            Button(action: {print("next view")}, label: {
                Text("Continue")
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                    .foregroundStyle(.white)
                    .padding()
                    .bold()
            })
        }
        .padding()
    }
}

#Preview {
    StartUpView()
}
