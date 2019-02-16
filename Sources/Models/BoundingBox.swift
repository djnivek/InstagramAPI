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
}
