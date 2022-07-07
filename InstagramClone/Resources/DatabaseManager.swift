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
    
    private let ref = Database.database().reference()
    
    public func canCreateNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        completion(true)
    }
    
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        ref.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                print("DEBUG: passed")
                completion(true)
                
                return
            } else {
                print("DEBUG: failed")
                completion(false)
                
                return
            }
        }
    }
}
