//
//  Instagram+Comment.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 01/02/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

extension Twitter.Comment: Provider {
    typealias Element = Comment
    
    var path: Path {
        switch self {
        case .comment(let id, let token):
            return "access_token=\(token)?\(id)"
        }
    }
    var params: Parameters? {
        return nil
    }
    var method: HTTPMethod {
        switch self {
        case .comment(_, _):
            return .get
        }
    }
    
}
