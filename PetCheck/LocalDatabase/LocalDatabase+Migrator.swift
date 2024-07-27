//
//  LocalDatabase+Migrator.swift
//  PetCheck
//
//  Created by Zaire McAllister on 7/26/24.
//

import Foundation
import GRDB

extension LocalDatabase {
    var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        
        #if DEBUG
        migrator.eraseDatabaseOnSchemaChange = true
        #endif
        
        migrator.registerMigration("createUserAndPetTables") { db in
            try createPetCheckTables(db)
        }
        
        return migrator
    }
    
    private func createPetCheckTables(_ db: GRDB.Database) throws {
        try db.create(table: "user") { table in
            table.column("id", .text).primaryKey()
            table.column("name",.text).notNull()
        }
        
        try db.create(table: "pet") { table in
            table.autoIncrementedPrimaryKey("id")
            table.column("name", .text).notNull()
            table.column("dateOfBirth",.date).notNull()
            table.column("breed", .text).notNull()
            table.belongsTo("user", onDelete: .cascade).notNull()
        }
    }
}
