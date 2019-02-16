//
//  Symbol.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import Foundation

/// Struct that contains all properties for a `Symbol`
///
/// symbols, i.e. $cashtags, included in the text of the Tweet
public struct Symbol: Decodable {
    
    /// An array of integers indicating the offsets within the `Tweet` text where the symbol/cashtag begins and ends
    ///
    /// The first integer represents the location of the $ character in the `Tweet` text string
    ///
    /// The second integer represents the location of the first character after the cashtag
    let indices: [Int]
    
    /// Range indicating the offsets within the `Tweet` text where the cashtag begins and ends
    public var range: ClosedRange<Int> {
        return indices.first!...indices.last!
    }
    
    /// Name of the cashhtag, minus the leading "$" character
    public let text: String
    
    enum SymbolKeys: String, CodingKey {
        case indices, text
    }
    
}
