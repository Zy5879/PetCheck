//
//  PreHomeView.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/27/24.
//

import SwiftUI

struct PreHomeView: View {
    @State var name: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("Setup Profile")
                    .font(.largeTitle)
                TextField("Enter your name", text: $name)
                    .frame(height: 45)
                    .padding(.horizontal)
                    .background(Color(UIColor.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 13, style: .continuous))
                Spacer()
                NavigationLink("Save") {
                    HomeView().navigationBarBackButtonHidden(true)
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 13, style: .continuous))
                .foregroundStyle(.white)
                .bold()
                Text("or")
                NavigationLink("Continue as Guest") {
                    HomeView().navigationBarBackButtonHidden(true)
                }
                .frame(height:50)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 13, style: .continuous))
                .foregroundStyle(.white)
                .bold()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PreHomeView()
}
