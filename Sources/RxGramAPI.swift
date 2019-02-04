//
//  RxGramAPI.swift
//  Zerty Color
//
//  Created by Kevin Machado on 25/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation

class GramAPI {
    
    func getUser(completion: @escaping (User) -> Void) {
        Twitter.User.info(token: "fs").request(completion: completion)
    }
    
}
