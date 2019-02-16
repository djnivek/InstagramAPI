//
//  Place.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 05/02/2019.
//

import Foundation

public struct Place: Decodable {
    
    /// Identifier representing this place
    public let id: String
    
    /// URL representing the location of additional place metadata for this place
    public let url: URL
    
    /// The type of location represented by this place
    public let place_type: String
    
    /// Short human-readable representation of the place’s name
    public let name: String
    
    /// Full human-readable representation of the place’s name
    public let full_name: String
    
    /// Shortened country code representing the country containing this place
    public let country_code: String
    
    /// Name of the country containing this place
    public let country: String
    
    /// A bounding box of coordinates which encloses this place
    public let bounding_box: String
}
