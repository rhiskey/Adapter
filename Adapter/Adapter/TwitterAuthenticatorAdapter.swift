//
//  TwitterAuthenticatorAdapter.swift
//  Adapter
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

class TwitterAuthentocatorAdapter: AuthenticationService{
    
    private var authenticator = TwitterAuthenticator()
    
    public func login(email: String,
                      password: String,
                      success: @escaping (User, Token) -> Void,
                      failure: @escaping (Error?) -> Void) {
        
        authenticator.login(email: email,
                            password: password){ (currentUser, error) in
            guard let currentUser = currentUser else {
                failure(error)
                return
            }
            let user = User(email: currentUser.email, password:  currentUser.password)
            
            let token = Token(value: currentUser.token)
            success(user, token)
        }
    }
}
