//
//  URLObject.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import Foundation

/// Struct that contains all properties defining the `URLObject`
///
/// URLs included in the text of a `Tweet`
public struct URLObject: Decodable {
    
    /// URL pasted/typed into `Tweet`
    public let displayUrl: URL

    /// Expanded version of `display_url`
    public let expandedUrl: URL
    
    /// /// An array of integers indicating the offsets within the `Tweet` text where the URL begins and ends
    ///
    /// The first integer represents the location of the first character of the `URL` in the `Tweet` text
    ///
    /// The second integer represents the location of the first non-URL character after the end of the URL
    let indices: [Int]
    
    /// Range indicating the offsets within the `Tweet` text where the `URL` begins and ends
    public var range: ClosedRange<Int> {
        return indices.first!...indices.last!
    }
    
    /// Wrapped URL, corresponding to the value embedded directly into the raw `Tweet` text, and the values for the indices parameter
    public let url: URL
    
    enum URLObjectKeys: String, CodingKey {
        case displayUrl = "display_url",
        expandedUrl = "expanded_url"
        case indices, url
    }
    
    public init(displayUrl: URL, expandedUrl: URL, url: URL, indices: [Int]) {
        self.displayUrl = displayUrl
        self.expandedUrl = expandedUrl
        self.indices = indices
        self.url = url
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: URLObjectKeys.self)
        
        let displayUrl = try container.decode(URL.self, forKey: .displayUrl)
        let url = try container.decode(URL.self, forKey: .url)
        let expandedUrl = try container.decode(URL.self, forKey: .expandedUrl)
        let indices = try container.decode([Int].self, forKey: .indices)
        
        self.init(displayUrl: displayUrl, expandedUrl: expandedUrl, url: url, indices: indices)
    }
    
}
