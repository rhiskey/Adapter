//
//  AuthenticationService.swift
//  Adapter
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

public struct User{
    public let email:String
    public let password:String
}

public struct Token{
    public let value:String
}

public protocol AuthenticationService{
    func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping(Error?) -> Void)
}
