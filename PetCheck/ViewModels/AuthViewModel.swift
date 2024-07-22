//
//  AuthViewModel.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/22/24.
//

import Foundation
import Supabase
import Combine


enum AuthState: Hashable {
    case Initial
    case Signin
    case Signout
}

class AuthViewModel: ObservableObject {
    @Published var name: String
    @Published var email: String
    @Published var password: String
    @Published var authState: AuthState = AuthState.Initial
    @Published var isLoading = false
    
    var cancellable = Set<AnyCancellable>()
    
    private var supabaseAuth: AuthService = AuthService()
    
    init(name: String, email: String, password: String, authState: AuthState, isLoading: Bool = false) {
        self.name = name
        self.email = email
        self.password = password
        self.authState = authState
        self.isLoading = isLoading
    }
    
    @MainActor
    func isUserSignIn() async {
        do {
            try await supabaseAuth.loginUser()
            authState = AuthState.Signin
        } catch _ {
            authState = AuthState.Signout
        }
    }
    
    @MainActor
    func signUp(name: String, email: String, password: String) async {
        do {
            isLoading = true
            try await supabaseAuth.signUp(name: name, email: email, password: password)
            authState = AuthState.Signin
            isLoading = false
        } catch let error {
            print(error.localizedDescription)
            isLoading = false
        }
    }
    
    @MainActor
    func signInWithEmail(email: String, password: String) async {
        do {
            isLoading = true
            try await supabaseAuth.signInWithEmail(email: email, password: password)
            authState = AuthState.Signin
            isLoading = false
        } catch let error {
            print(error.localizedDescription)
            isLoading = false
        }
    }
    
    @MainActor
    func signOutUser() async {
        do {
            try await supabaseAuth.signOut()
            authState = AuthState.Signout
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
