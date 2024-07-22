//
//  AuthManager.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/22/24.
//

import Foundation
import Supabase

class AuthService {
    let client = SupabaseClient(supabaseURL: URL(string: "https://bbsgwvwhhjktjufrqqsl.supabase.co")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJic2d3dndoaGprdGp1ZnJxcXNsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE2MDcyNzUsImV4cCI6MjAzNzE4MzI3NX0.QfSBQTpE2mSQN5ep7gcPkSxcR0O_zXw-SnxHKFxAQ1M")
    
    func loginUser() async throws {
        do {
            let session = try await client.auth.session
        } catch let error {
            print(error.localizedDescription)
            throw error
        }
    }
    
    func signInWithEmail(email:String, password:String) async throws {
        do {
            try await client.auth.signIn(email: email.lowercased(), password: password)
        } catch let error {
            print(error.localizedDescription)
            throw error
        }
    }
    
    func signUp(name: String, email: String, password: String) async throws {
        do {
            try await client.auth.signUp(email:email.lowercased(), password: password)
        } catch let error {
            print(error.localizedDescription)
            throw error
        }
    }
    
    func signOut() async throws {
        do {
            try await client.auth.signOut()
        } catch let error {
            
        }
    }
}
