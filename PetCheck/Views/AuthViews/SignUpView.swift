//
//  SignUpView.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/22/24.
//

import SwiftUI

struct SignUpView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Name", text: $name)
                    .clipShape(RoundedRectangle.init(cornerRadius: 15))
                    .padding(.horizontal)
                    .frame(height: 45)
                    .background(Color(UIColor.secondarySystemBackground))
                TextField("Email", text: $email)
                    .clipShape(RoundedRectangle.init(cornerRadius: 15))
                    .padding(.horizontal)
                    .frame(height: 45)
                    .background(Color(UIColor.secondarySystemBackground))
                SecureField("Password", text: $password)
                    .clipShape(RoundedRectangle.init(cornerRadius: 15))
                    .padding(.horizontal)
                    .frame(height: 45)
                    .background(Color(UIColor.secondarySystemBackground))
                SecureField("Confirm Password", text: $confirmPassword)
                    .clipShape(RoundedRectangle.init(cornerRadius: 15))
                    .padding(.horizontal)
                    .frame(height: 45)
                    .background(Color(UIColor.secondarySystemBackground))
                Button(action: {print("Signing Up")}, label: {
                    Text("Finish Signing Up")
                })
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 13, style: .continuous))
                .foregroundStyle(.white)
                .padding(30)
                HStack {
                    Text("Already have an account?")
                    NavigationLink("Sign In", destination: LoginView())
                }
            }
            .padding()
        }
        .offset(y:-100)
        .navigationTitle("Sign Up")
    }
}

#Preview {
    NavigationStack {
        SignUpView()
    }
}
