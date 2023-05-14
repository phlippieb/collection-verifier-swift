// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "CollectionVerifier",
    products: [
        .library(
            name: "CollectionVerifier",
            targets: ["CollectionVerifier"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CollectionVerifier",
            dependencies: []),
        .testTarget(
            name: "CollectionVerifierTests",
            dependencies: ["CollectionVerifier"]),
    ]
)
