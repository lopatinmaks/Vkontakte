//
//  Session.swift
//  VKontakte
//
//  Created by Ольга on 27.03.2023.
//

import Foundation

final class Session: CustomStringConvertible {
    
    static let shared = Session()
    private init() {}
    
    var token: String = "MaksLopatin"
    var userID: Int = 1234567890
    
    var description: String {
        return "token: \(token), userID: \(userID)"
    }
}
