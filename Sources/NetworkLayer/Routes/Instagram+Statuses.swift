//
//  Instagram+Statuses.swift
//  TwitterAPI-iOS
//
//  Created by MACHADO KEVIN on 27/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

extension Twitter.Statuses: Provider {
    typealias Element = [Tweet]
    
    var path: Path {
        switch self {
        case .homeTimeline:
            return "home_timeline.json"
        case .userTimeline(let screenName, let userID):
            var path = "user_timeline.json"
            var first = true
            if let screenName = screenName {
                path = path+"?screen_name=\(screenName)"
                first = false
            }
            if let userID = userID {
                path = path+"\(first ? "?": "&")user_id=\(userID)"
            }
            return path
        case .mentionTimeline:
            return "mentions_timeline.json"
        }
    }
    var params: Parameters? {
        return nil
    }
    var method: HTTPMethod {
        switch self {
        case .homeTimeline:
            return .get
        case .userTimeline(_):
            return .get
        case .mentionTimeline:
            return .get
        }
    }
    
}
