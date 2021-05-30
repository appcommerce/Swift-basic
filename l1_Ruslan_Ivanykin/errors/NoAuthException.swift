//
//  NoAuthException.swift
//  l1_Ruslan_Ivanykin
//
//  Created by Руслан on 30.05.2021.
//

import Foundation

enum NoAuthException: Error {
   case badPassword
   case badToken
}
