//
//  Tweet.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 05/02/2019.
//

import Foundation

/// This class contains all properties about a `Tweet`
///
/// You can see here the full documentation https://developer.twitter.com/en/docs/tweets/data-dictionary/overview/tweet-object
public class Tweet: Decodable {
    
    /// UTC time when the tweet has been created
    public let createdAt: Date
    
    /// The tweet identifier
    public let id: String
    
    /// The text
    public let text: String
    
    /// The source from where the tweet has been posted.
    ///
    /// Example: "Twitter for iOS"
    public let source: String
    
    /// Indicates whether the text has been truncated
    ///
    /// This appear when the text exceed 140 characters
    public let truncated: Bool
    
    /// Contains the string representation of the original Tweet's ID
    ///
    /// This value is referenced if the represented `Tweet` is a reply
    public let inReplyToStatusId: String?
    
    
    /// Contains the identifier of the original Tweet's author ID.
    ///
    /// This value is referenced if the represented `Tweet` is a reply
    public let inReplyToUserId: String?
    
    /// The screen name of the original Tweet's author
    ///
    /// This value is referenced if the represented `Tweet` is a reply
    public let inReplyToScreenName: String?
    
    /// The user who posted the Tweet
    public let user: User
    
    /// Represents the geograpic location of the `Tweet`
    ///
    /// This value is reported by the user or client application
    public let coordinates: Coordinate?
    
    /// Indicates the place associated to the tweet
    ///
    /// The value is not necessarily originating from the place
    public let place: Place?
    
    /// `Tweet` Identifier of the quoted Tweet
    ///
    /// Only surfaces when the `Tweet` is a quoted `Tweet`
    public let quotedStatusId: String?
    
    /// Indicates whether this tweet is a quoted one or not.
    public let isQuoteStatus: Bool
    
    /// `Tweet` object representing the quoted Tweet
    ///
    /// Only surfaces when the `Tweet` is a quoted `Tweet`
    public let quotedStatus: Tweet?
    
    /// `Tweet` object that represents the original that was retweeted
    ///
    /// Only available if the tweet has been retweeted
    /// Note that retweets of retweets do not show representations of the intermediary retweet, but only the original `Tweet`
    public let retweetedStatus: Tweet?
    
    /// Indicates how many time the tweet has been retweeted by the community
    public let favoriteCount: Int?
    
    /// Entities has been parsed out of the text of the `Tweet`
    public let entities: Entities
    
    /// Entities has been parsed out of the text of the `Tweet`
    ///
    /// This value is set only for Tweets with more than one photo, a video, or animated GIF
    public let extendedEntities: Entities
    
    /// Indicates whether the `Tweet` has been liked by the current `User`
    public let favorited: Bool
    
    /// Indicates whether this `Tweet` has been retweeted by the current `User`
    public let retweeted: Bool
    
    /// Indicates whether this `Tweet` may be offensive or containing sensitive content
    public let possiblySensitive: Bool
    
    /// Indicates a BCP47 language identifier corresponding to the language of the user who posted this `Tweet`
    ///
    /// This value is a BCP 47 format or `und` if no language could be detected
    /// See more documentation here http://support.gnip.com/apis/powertrack2.0/rules.html#Operators -> lang attribut
    public let lang: String?
    
    enum TweetKeys: String, CodingKey {
        case createdAt = "created_at",
        id = "id_str",
        inReplyToStatusId = "in_reply_to_status_id_str",
        inReplyToUserId = "in_reply_to_user_id_str",
        inReplyToScreenName = "in_reply_to_screen_name",
        quotedStatusId = "quoted_status_id_str",
        isQuoteStatus = "is_quote_status",
        quotedStatus = "quoted_status",
        retweetedStatus = "retweeted_status",
        favoriteCount = "favorite_count",
        extendedEntities = "extended_entities",
        possiblySensitive = "possibly_sensitive"
        
        case text, source, truncated, user, coordinates, place, entities, favorited, retweeted, lang
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: TweetKeys.self)
////        self.alcohol_content = try container.decode(String.self, forKey: .alcohol_content)
//    }
}
