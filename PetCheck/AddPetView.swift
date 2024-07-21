//
//  AddPetView.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/21/24.
//

import SwiftUI

struct AddPetView: View {
    @State var petFirstName: String = ""
    @State var petLastName: String = ""
    @State var petNickName: String = ""
    @State var dob: String = ""
    @State var breed: String = ""
    @State var sexOfPet: String = ""
    var body: some View {
        VStack {
            TextField("First Name of Pet", text: $petFirstName)
                .clipShape(RoundedRectangle.init(cornerRadius: 15))
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Last Name of Pet (if applicable)", text: $petLastName)
                .clipShape(RoundedRectangle.init(cornerRadius: 15))
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Pet Nickname (if applicable)", text: $petNickName)
                .clipShape(RoundedRectangle.init(cornerRadius: 15))
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Date of Birth ex: MM/DD/YYYY", text: $dob)
                .clipShape(RoundedRectangle.init(cornerRadius: 15))
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Breed of Pet", text: $breed)
                .clipShape(RoundedRectangle.init(cornerRadius: 15))
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            TextField("Sex", text: $sexOfPet)
                .clipShape(RoundedRectangle.init(cornerRadius: 15))
                .padding(.horizontal)
                .frame(height: 45)
                .background(Color(UIColor.secondarySystemBackground))
            Button(action: {print("saving pet")}, label: {
                Text("Save Pet")
            })
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(Color.accentColor)
            .foregroundStyle(.white)
            .padding(30)
            .clipShape(RoundedRectangle.init(cornerRadius: 15))

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
