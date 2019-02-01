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
        }
    }
    var params: Parameters? {
        return nil
    }
    var method: HTTPMethod {
        switch self {
        case .info(_):
            return .get
        }
    }
    
}
