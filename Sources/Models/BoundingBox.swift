//
//  BoundingBox.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 16/02/2019.
//

import Foundation

public typealias Coordinates = [Float]

/// A bounding box of coordinates which encloses this place
public struct BoundingBox: Decodable {
    
    public let collection: [Array<Coordinates>]
    
    enum BoundingBoxKeys: String, CodingKey {
        case collection
    }

    public init(collection: [Array<Coordinates>]) {
        self.collection = collection
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: BoundingBoxKeys.self)
        
        let collection = try container.decode([Array<Coordinates>].self, forKey: .collection)
        
        self.init(collection: collection)
    }
}
