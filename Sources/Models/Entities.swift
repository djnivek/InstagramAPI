//
//  Entities.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 05/02/2019.
//

import Foundation

/// Entities object is a holder of arrays of other entity sub-objects
public struct Entities: Decodable {
    
    /// Represents Hashtags parsed out of the `Tweet` text
    public let hashtags: [Hashtag]
    
    /// Represents media elements uploaded with the `Tweet`
    public let medias: [Media]
    
    /// Represents URLs included in the text of a `Tweet`
    public let urls: [URLObject]
    
    /// Represents other Twitter users mentioned in the text of the `Tweet`
    public let userMentions: [UserMention]
    
    /// Represents symbols, i.e. $cashtags, included in the text of the `Tweet`
    public let symbols: [Symbol]
    
    enum EntitiesKeys: String, CodingKey {
        case userMentions = "user_mentions"
        case hashtags, medias, urls, symbols
    }
}
