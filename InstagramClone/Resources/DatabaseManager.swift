//
//  DatabaseManager.swift
//  InstagramClone
//
//  Created by Dean Thompson on 2022/07/01.
//

import Foundation
import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database()
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        
    }
    
    public func insertNewUser(with email: String, username: String) {
        
    }
}
