//
//  AddPetView.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/21/24.
//

import SwiftUI

struct AddPetView: View {
    @State var petName: String = ""
    @State var petNickName: String = ""
    @State var dob: String = ""
    @State var breed: String = ""
    @State var sexOfPet: String = ""
    var body: some View {
        VStack {
            TextField("Name of Pet", text: $petName)
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Pet Nickname (if applicable)", text: $petNickName)
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Date of Birth ex: MM/DD/YYYY", text: $dob)
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Breed of Pet", text: $breed)
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Sex", text: $sexOfPet)
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            Button(action: {print("saving pet")}, label: {
                Text("Save")
            })
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 13, style: .continuous))
            .foregroundStyle(.white)
            .padding(30)
        }
        .padding()
        .offset(y:-80)
        .navigationTitle("Add Your Pet 🦮")
    }
}

#Preview {
    NavigationStack {
        AddPetView()
    }
}
