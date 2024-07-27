//
//  LocalDatabase.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/26/24.
//

import Foundation
import Combine
import GRDB

struct LocalDatabase {
    
    private let writer: DatabaseWriter
    
    init(_ writer: DatabaseWriter) throws {
        self.writer = writer
        try migrator.migrate(writer)
    }
    
    var reader: DatabaseReader {
        writer
    }
}


// MARK: - Writes
extension LocalDatabase {
    func createUser(_ user: User) async throws {
        try await writer.write { db in
            try user.insert(db)
        }
    }
    
    func createPet(_ pet: Pet) async throws {
        try await writer.write { db in
            try pet.insert(db)
        }
    }
}

// MARK: - Observe

extension LocalDatabase {
    func  observeUser() -> AnyPublisher<[User], Error> {
        
        let observation = ValueObservation.tracking { db in
            return try User.fetchAll(db)
        }
        
        let publisher = observation.publisher(in: reader)
        return publisher.eraseToAnyPublisher()
    }
}

// MARK: - Reads

extension LocalDatabase {
    func getPetsForUser(_ user: User) async throws -> [Pet] {
        try await reader.read { db in
            let pets = try user.pets.fetchAll(db)
            return pets
        }
    }
}
