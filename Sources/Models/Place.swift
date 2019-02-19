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
    public let placeType: String
    
    /// Short human-readable representation of the place’s name
    public let name: String
    
    /// Full human-readable representation of the place’s name
    public let fullname: String
    
    /// Shortened country code representing the country containing this place
    public let countryCode: String
    
    /// Name of the country containing this place
    public let country: String
    
    /// A bounding box of coordinates which encloses this place
    public let boundingBox: String
    
    enum PlaceKeys: String, CodingKey {
        case id = "id_str"
        case url
        case placeType = "place_type"
        case name
        case fullname = "full_name"
        case countryCode = "country_code"
        case country
        case boundingBox = "bounding_box"
    }
    
    public init(id: String, url: URL, placeType: String, name: String, fullname: String, countryCode: String, country: String, boundingBox: String) {
        self.id = id
        self.url = url
        self.placeType = placeType
        self.name = name
        self.fullname = fullname
        self.countryCode = countryCode
        self.country = country
        self.boundingBox = boundingBox
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: PlaceKeys.self)
        
        let id = try container.decode(String.self, forKey: .id)
        let name = try container.decode(String.self, forKey: .name)
        let fullname = try container.decode(String.self, forKey: .fullname)
        let placeType = try container.decode(String.self, forKey: .placeType)
        let url = try container.decode(URL.self, forKey: .url)
        let country = try container.decode(String.self, forKey: .country)
        let countryCode = try container.decode(String.self, forKey: .countryCode)
        let boundingBox = try container.decode(String.self, forKey: .boundingBox)
        
        self.init(id: id, url: url, placeType: placeType, name: name, fullname: fullname, countryCode: countryCode, country: country, boundingBox: boundingBox)
    }
    
}
