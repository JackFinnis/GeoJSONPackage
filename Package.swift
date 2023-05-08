// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GeoJSONPackage",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .watchOS(.v4),
        .tvOS(.v11),
    ],
    products: [
        .library(
            name: "GeoJSONPackage",
            targets: ["GeoJSONPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/flight-school/AnyCodable.git", from: "0.2.3"),
    ],
    targets: [
        .target(
            name: "GeoJSONPackage",
            dependencies: ["AnyCodable"]),
        .testTarget(
            name: "GeoJSONPackageTests",
            dependencies: ["GeoJSONPackage"]),
    ]
)
