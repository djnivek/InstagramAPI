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
    public let medias: [Media]?
    
    /// Represents URLs included in the text of a `Tweet`
    public let urls: [URLObject]
    
    /// Represents other Twitter users mentioned in the text of the `Tweet`
    public let userMentions: [UserMention]
    
    /// Represents symbols, i.e. $cashtags, included in the text of the `Tweet`
    public let symbols: [Symbol]

    public init(hashtags: [Hashtag], medias: [Media]?, urls: [URLObject], userMentions: [UserMention], symbols: [Symbol]) {
        self.hashtags = hashtags
        self.medias = medias
        self.urls = urls
        self.userMentions = userMentions
        self.symbols = symbols
    }

    enum EntitiesKeys: String, CodingKey {
        case userMentions = "user_mentions"
        case hashtags, medias, urls, symbols
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: EntitiesKeys.self)
        
        let hashtags = try container.decode([Hashtag].self, forKey: .hashtags)
        let medias = try container.decodeIfPresent([Media].self, forKey: .medias)
        let urls = try container.decode([URLObject].self, forKey: .urls)
        let userMentions = try container.decode([UserMention].self, forKey: .userMentions)
        let symbols = try container.decode([Symbol].self, forKey: .symbols)
        
        self.init(hashtags: hashtags, medias: medias, urls: urls, userMentions: userMentions, symbols: symbols)
    }
}
