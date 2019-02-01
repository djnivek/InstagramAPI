//
//  Routes.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 26/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation
import Alamofire

struct Instagram {
    enum User {
        case info(token: String)
        case medias(token: String, count: Int, minMediaId: String, maxMediaId: String)
    }
    enum Comment {
        case media(id: String, token: String)
    }
}
