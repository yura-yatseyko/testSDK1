// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PurpleSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PurpleSDK",
            targets: ["PurpleSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", from: "2.3.1"),
//        .package(url: "https://github.com/yura-yatseyko/testSDK1", branch: "main")
//        .package(url: "https://github.com/yura-yatseyko/testSDK1/", branch: "main")
        .package(name: "Home", path: "./Home"),
//        .package(path: "./Domain")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PurpleSDK",
            dependencies: [
                // Domain layer
//                .product(name: "Entities", package: "Domain"),
//                .product(name: "RepositoryProtocol", package: "Domain"),
//                .product(name: "UseCaseProtocol", package: "Domain"),
//                .product(name: "UseCases", package: "Domain"),
                // Data layer
//                .product(name: "NetworkCore", package: "Data"),
//                .product(name: "NetworkExtension", package: "Data"),
//                .product(name: "Repositories", package: "Data"),
                // External libraries
                .product(name: "Factory", package: "Factory"),
                .product(name: "Home", package: "Home")
            ]
        ),
        .testTarget(
            name: "PurpleSDKTests",
            dependencies: ["PurpleSDK"]),
    ]
)
