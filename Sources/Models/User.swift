//
//  User.swift
//  TwitterAPI-iOS
//
//  Created by MACHADO KEVIN on 01/02/2019.
//  Copyright © 2019 Zerty Color. All rights reserved.
//

import Foundation

struct User: Decodable {
    enum UserKeys: String, CodingKey {
        case profilePictureStringURL = "profile_picture"
        case fullname = "full_name"
        
        case id
        case username
        case bio
    }
    var id: String
    var username: String
    var fullname: String
    var profilePictureStringURL: String
    var bio: String
}
