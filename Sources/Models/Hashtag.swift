//
//  Hashtag.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import Foundation

/// Struct that contains all properties for a `Hashtag`
///
/// Hashtags parsed out of the `Tweet` text
public struct Hashtag: Decodable {
    
    /// An array of integers indicating the offsets within the `Tweet` text where the hashtag begins and ends
    ///
    /// The first integer represents the location of the # character in the `Tweet` text string
    ///
    /// The second integer represents the location of the first character after the hashtag
    let indices: [Int]
    
    /// Range indicating the offsets within the `Tweet` text where the hashtag begins and ends
    public var range: ClosedRange<Int> { return indices.first!...indices.last! }
    
    /// Name of the hashtag, without the "#"
    public let text: String
    
    enum SymbolKeys: String, CodingKey {
        case indices, text
    }
    
}
