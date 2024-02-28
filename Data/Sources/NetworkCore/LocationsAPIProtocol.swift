//
//  LocationsAPIProtocol.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

public protocol LocationsAPIProtocol {
    func fetchLocations() async throws -> [LocationResponseDTO]
}
