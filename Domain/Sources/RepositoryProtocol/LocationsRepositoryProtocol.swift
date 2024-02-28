//
//  LocationsRepositoryProtocol.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Entities

public protocol LocationsRepositoryProtocol {
    func fetchLocations() async throws -> [Location]
}
