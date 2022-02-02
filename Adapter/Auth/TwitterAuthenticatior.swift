//
//  TwitterAuthenticatior.swift
//  Adapter
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

public struct Twitter{
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuthenticator {
    public func login(
        email: String,
        password: String,
        completion: @escaping (Twitter?, Error?) -> Void) {
            
            let token = "special-token-value-twitter"
            
            let user = Twitter(
                email: email,
                password: password,
                token: token)
            
            completion(user, nil) //return
        }
}
