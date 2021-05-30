//
//  UserRepository.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 30.05.2021.
//

import Foundation

class UserRepository {
    let user: User
    init(user: User) {
        self.user = user
    }
    
    func tryAuth(password: String) throws -> Bool{
        guard password == "ertyghg" else{
           throw NoAuthException.badPassword
        }
        return true
    }
    
    func getMe(token: String) throws -> User{
        guard token == "fdsfdsfe" else {
            throw NoAuthException.badToken
        }
        return user
    }
}
