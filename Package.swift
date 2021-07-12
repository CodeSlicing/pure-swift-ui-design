// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PureSwiftUIDesign",
    platforms: [.iOS(SupportedPlatform.IOSVersion.v13)],
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
