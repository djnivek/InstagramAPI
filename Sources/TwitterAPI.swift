//
//  TwitterAPI.swift
//  Zerty Color
//
//  Created by Kevin Machado on 25/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation

class TwitterAPI {
    
    func getUserTimeline(from screenname: String, completion: @escaping ([Tweet]) -> Void) {
        Twitter.Statuses.userTimeline(screenName: screenname, userID: nil)
            .request(completion: completion)
    }
    
    func getUserTimeline(by userId: String, completion: @escaping ([Tweet]) -> Void) {
        Twitter.Statuses.userTimeline(screenName: nil, userID: userId)
            .request(completion: completion)
    }
}
