//
//  Instagram+User.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 27/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

extension Instagram.User: Provider {
    typealias Element = User
    
    var path: Path {
        switch self {
        case .info(let token):
            return "users/self/?access_token=\(token)"
        case .medias(let token, let count, let minMediaId, let maxMediaId):
            return "users/self/media/recent/?access_token=/\(token)?count=/\(count)?=min_id/\(minMediaId)?=max_id/\(maxMediaId)"
        }
    }
    var params: Parameters? {
        return nil
    }
    var method: HTTPMethod {
        switch self {
        case .info(_):
            return .get
        case .medias(_,_,_,_):
            return .get
        }
    }
    
}
