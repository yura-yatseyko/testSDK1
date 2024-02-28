//
//  LocationResponseDTO.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Foundation

public struct LocationResponseDTO: Decodable, Equatable {
    public let uuid: String
    public let name: String
    public let address: String
    public let description: String
}
