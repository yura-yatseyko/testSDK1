//
//  LocationsUseCase.swift
//
//
//  Created by Yuriy Yatseyko on 28.02.2024.
//

import Entities
import RepositoryProtocol
import UseCaseProtocol

public class LocationsUseCase: LocationsUseCaseProtocol {

    private let repository: LocationsRepositoryProtocol

    public init(repository: LocationsRepositoryProtocol) {
        self.repository = repository
    }

    public func fetchLocations() async throws -> [Location] {
        return try await repository.fetchLocations()
    }
}
