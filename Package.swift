// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PureSwiftUIDesign",
    platforms: [
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "PureSwiftUIDesign",
            targets: ["PureSwiftUIDesign"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "PureSwiftUIDesign",
            dependencies: []),
        .testTarget(
            name: "PureSwiftUIDesignTests",
            dependencies: ["PureSwiftUIDesign"]),
    ]
)
