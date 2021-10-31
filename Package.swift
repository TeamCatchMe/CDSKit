// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CDSKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CDSKit",
            targets: ["CDSKit"]),
    ],
    dependencies: [
        .package(name: "SnapKit", url: "https://github.com/SnapKit/SnapKit", from: "5.0.0"),
    ],
    targets: [
        .target(
            name: "CDSKit",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ],
            path: "CDSKit/Source",
            resources: [
                .process("Resource/Fonts/DINPro-Bold.otf"),
                .process("Resource/Fonts/DINPro-Medium.otf"),
                .process("Resource/Fonts/DINPro-Regular.otf"),
                .process("Resource/Fonts/NanumSquareRoundOTFEB.otf"),
                .process("Resource/Fonts/SpoqaHanSansNeo-Bold.otf"),
                .process("Resource/Fonts/SpoqaHanSansNeo-Medium.otf"),
                .process("Resource/Fonts/SpoqaHanSansNeo-Regular.otf"),
                .process("Resource/CDSAsset.xcassets")
            ]
        )
    ]
)
