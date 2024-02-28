//
//  LocationsUseCaseProtocol.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Entities

public protocol LocationsUseCaseProtocol {
    func fetchLocations() async throws -> [Location]
}
