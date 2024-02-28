//
//  LocationsRepository.swift
//  
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Foundation
import NetworkCore
import RepositoryProtocol
import Entities

public class LocationsRepository: LocationsRepositoryProtocol {

    private let locationsAPI: LocationsAPIProtocol

    public init(locationsAPI: LocationsAPIProtocol) {
        self.locationsAPI = locationsAPI
    }

    public func fetchLocations() async throws -> [Location] {
        return try await locationsAPI.fetchLocations().map { $0 as Location }
    }
}

extension LocationResponseDTO: Location {}
