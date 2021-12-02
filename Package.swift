// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CDSKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CDSKit",
            targets: ["CDSKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", .upToNextMajor(from: "5.0.1")),
    ],
    targets: [
        .target(
            name: "CDSKit",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit", condition: .when(platforms: [.iOS]))
            ],
            path: "CDSKit/Source",
            resources: [
                .process("Resource/Fonts"),
                .process("Foundation/CDSIcon.xcassets")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
