//
//  Instagram+Comment.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 27/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

extension Instagram.Comment: Provider {
    typealias Element = Media
    
    var path: Path {
        switch self {
        case .media(let id, let token):
                return "access_token=\(token)?\(id)"
        }
    }
    var params: Parameters? {
        return nil
    }
    var method: HTTPMethod {
        switch self {
        case .media(_):
            return .get
        }
    }
    
}
