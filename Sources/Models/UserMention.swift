//
//  UserMention.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import Foundation

/// Struct that contains all properties for a `UserMention`
///
/// Twitter users mentioned in the text of the `Tweet`
public struct UserMention: Decodable {
    
    /// Identifier of the mentioned `User`
    public let id: String
    
    /// An array of integers representing the offsets within the `Tweet` text where the user reference begins and ends.
    ///
    /// The first integer represents the location of the ‘@’ character of the `UserMention`
    ///
    /// The second integer represents the location of the first non-screenname character following the `UserMention`
    let indices: [Int]
    
    /// Range indicating the offsets within the `Tweet` text where the mention begins and ends
    public var range: ClosedRange<Int> {
        return indices.first!...indices.last!
    }
    
    /// Display name of the referenced `User`
    public let name: String
    
    /// Screen name of the referenced `User`
    public let screenName: String
    
    enum UserMentionKeys: String, CodingKey {
        case id = "id_str",
        screenName = "screen_name"
        case indices, name
    }
    
    public init(id: String, indices: [Int], name: String, screenName: String) {
        self.id = id
        self.indices = indices
        self.name = name
        self.screenName = screenName
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UserMentionKeys.self)
        
        let id = try container.decode(String.self, forKey: .id)
        let indices = try container.decode([Int].self, forKey: .indices)
        let name = try container.decode(String.self, forKey: .name)
        let screenName = try container.decode(String.self, forKey: .screenName)
        
        self.init(id: id, indices: indices, name: name, screenName: screenName)
    }
}
