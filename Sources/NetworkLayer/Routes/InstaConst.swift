//
//  InstaConst.swift
//  RxGramAPI-iOS
//
//  Created by MACHADO KEVIN on 27/01/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation

extension Twitter {
    struct Info {
        static var baseURL = URL(string: "https://api.instagram.com/v1/")!
    }
    enum ContentType: String {
        case json = "application/json"
    }
}
