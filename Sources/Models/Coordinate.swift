//
//  Coordinate.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 05/02/2019.
//

import Foundation

/// Coordinate objet that contains all properties about the position (Coordinates)
public struct Coordinate: Decodable {
    
    /// Longitude coordinate
    public var longitude: Float { return coordinates.first! } // first item is the longitude
    
    /// Latitude coordinate
    public var latitude: Float { return coordinates.last! } // second item (and the last) is the latitude
    
    /// The longitude and latitude of the Tweet’s location
    ///
    /// As a collection in the form [longitude, latitude]
    private let coordinates: [Float]
    
    /// The type of data encoded in the coordinates property
    ///
    /// This will be "Point" for `Tweet` coordinates fields
    public let type: String
    
    enum CoordinateKeys: String, CodingKey {
        case coordinates, type
    }

    public init(coordinates: [Float], type: String) {
        self.coordinates = coordinates
        self.type = type
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CoordinateKeys.self)
        
        let coordinates = try container.decode([Float].self, forKey: .coordinates)
        let type = try container.decode(String.self, forKey: .type)
        
        self.init(coordinates: coordinates, type: type)
    }
}
