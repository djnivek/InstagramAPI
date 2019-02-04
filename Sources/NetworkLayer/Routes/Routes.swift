//
//  Routes.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 26/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

struct Twitter {
    enum User {
        case info(token: String)
    }
    enum Media {
        case medias(token: String, count: Int, minMediaId: String, maxMediaId: String)
    }
    enum Comment {
        case comment(id: String, token: String)
    }
}
