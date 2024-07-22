//
//  LoginView.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/22/24.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationStack {
            VStack {
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
                Button(action: {print("Logging In")}, label: {
                    Text("Sign In to My Account")
                })
                .frame(maxWidth: .infinity)
                .frame(height: 45)
                .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 13, style: .continuous))
                .foregroundStyle(.white)
                .padding()
                HStack {
                    Text("Dont have an account?")
                    Button(action: {print("navigate to signup page")}, label: {
                        Text("Sign Up")
                            .underline()
                    })
                }
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
