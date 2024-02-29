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
        .package(url: "../", branch: "main")
//        .package(name: "MyLibrary1", path: "./MyLibrary1")
//        .package(name: "MyLibrary1", url: "https://github.com/yura-yatseyko/testSDK1", branch: "main")
//        .package(path: "./MyLibrary1")
//        .package(url: "https://github.com/yura-yatseyko/-MyLibrary1", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PurpleSDK",
            dependencies: [
                .product(name: "Factory", package: "Factory"),
//                .product(name: "MyLibrary1", package: "..")
//                .product(name: "MyLibrary1", package: "-MyLibrary1")
            ]
        ),
        .testTarget(
            name: "PurpleSDKTests",
            dependencies: ["PurpleSDK"]),
    ]
)
