//
//  PetCheckModels.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/26/24.
//

import Foundation
import GRDB

struct User: Identifiable, Codable {
    var id: String
    var name: String
}

extension User: EncodableRecord, FetchableRecord {}

extension User: TableRecord {
    static let pets = hasMany(Pet.self)
    
    var pets: QueryInterfaceRequest<Pet> {
        request(for: User.pets)
    }
}

extension User: PersistableRecord {}


struct Pet: Identifiable, Codable {
    var id: Int64?
    var name: String
    var dateOfBirth: Date
    var breed: String
    var userId: String
}

extension Pet: TableRecord, FetchableRecord, EncodableRecord {}
extension Pet: PersistableRecord {}
