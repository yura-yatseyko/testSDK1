// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Domain",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Entities",
            targets: ["Entities"]
        ),
        .library(
            name: "RepositoryProtocol",
            targets: ["RepositoryProtocol"]
        ),
        .library(
            name: "UseCaseProtocol",
            targets: ["UseCaseProtocol"]
        ),
        .library(
            name: "UseCases",
            targets: ["UseCases"]
        )
    ],
    targets: [
        .target(
            name: "Entities"
        ),
        .target(
            name: "RepositoryProtocol",
            dependencies: ["Entities"]
        ),
        .target(
            name: "UseCaseProtocol",
            dependencies: ["Entities"]
        ),
        .target(
            name: "UseCases",
            dependencies: [
                "RepositoryProtocol",
                "UseCaseProtocol"
            ]
        )
    ]
)
