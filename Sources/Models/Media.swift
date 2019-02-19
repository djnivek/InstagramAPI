//
//  Media.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import Foundation

/// Struct that contains all properties for a `Media`
///
/// Media elements uploaded with the `Tweet`
public struct Media: Decodable {
    
    /// URL of the media to display to clients
    public let displayUrl: String
    
    /// An expanded version of display_url. Links to the media display page
    public let expandedUrl: String
    
    /// The identifier of the media expressed as a string
    public let id: String
    
    /// An array of integers indicating the offsets within the `Tweet` text where the URL begins and ends
    ///
    /// The first integer represents the location of the first character of the URL in the `Tweet` text
    ///
    /// The second integer represents the location of the first non-URL character occurring after the URL (or the end of the string if the URL is the last part of the `Tweet` text)
    let indices: [Int]
    
    /// Range indicating the offsets within the `Tweet` text where the `URL` begins and ends
    public var range: ClosedRange<Int> { return indices.first!...indices.last! }
    
    /// An HTTP based URL pointing directly to the uploaded media file
    ///
    /// For media in direct messages, media_url is the same https URL as media_url_https and must be accessed by signing a request with the user’s access token using OAuth 1.0A.
    ///
    /// More informations https://developer.twitter.com/en/docs/direct-messages/message-attachments/guides/retrieving-media
    public let mediaUrl: URL
    
    /// An HTTPS based URL pointing directly to the uploaded media file
    ///
    /// For media in direct messages, media_url_https must be accessed by signing a request with the user’s access token using OAuth 1.0A.
    public let mediaUrlHttps: URL
    
    /// An object showing available sizes for the media file
    public let size: Media.Sizes
    
    /// For Tweets containing media that was originally associated with a different tweet, this string-based ID points to the original `Tweet`
    public let sourceStatusId: String?
    
    /// Type of uploaded media
    public let type: Media.MediaType
    
    enum MediaKeys: String, CodingKey {
        case displayUrl = "display_url",
        expandedUrl = "expanded_url",
        id_str = "id_str",
        mediaUrl = "media_url",
        mediaUrlHttps = "media_url_https",
        sourceStatusId = "source_status_id_str"
        case indices, size, type
    }
}

public extension Media {
    
    /// Enum that contains the type of uploaded media
    ///
    /// Possible types include photo, video, and animated_gif
    public enum MediaType: String, Codable {
        case photo, video
        case animatedGif = "animated_gif"
    }
    
    /// Enum defining resizing method
    public enum Resize: String, Codable {
        /// A value of fit means that the media was resized to fit one dimension, keeping its native aspect ratio
        case fit
        /// A value of crop means that the media was cropped in order to fit a specific resolution
        case crop
    }
    
    /// Struct that contains all properties that defines the size
    public struct Size: Decodable {
        /// Width in pixels of this size
        public let w: Int
        /// Height in pixels of this size
        public let h: Int
        /// Resizing method used to obtain this size
        public let resize: Media.Resize
    }
    
    /// All Tweets with native media (photos, video, and GIFs) will include a set of ‘thumb’, ‘small’, ‘medium’, and ‘large’ sizes with height and width pixel sizes.
    public struct Sizes: Decodable {
        /// Information for a thumbnail-sized version of the media
        public let thumb: Media.Size
        /// Information for a large-sized version of the media
        public let large: Media.Size
        /// Information for a medium-sized version of the media
        public let medium: Media.Size
        /// Information for a small-sized version of the media
        public let small: Media.Size
    }
}
