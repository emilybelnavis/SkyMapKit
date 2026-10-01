// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SkyMapKit",
    platforms: [.macOS(.v27)],
    products: [
        .library(name: "SkyMapKit", targets: ["SkyMapKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/emilybelnavis/AstroCore.git", branch: "main"),
        .package(url: "https://github.com/emilybelnavis/AstroCatalogKit.git", branch: "main")
    ],
    targets: [
        .target(
            name: "SkyMapKit",
            dependencies: [
                .product(name: "AstroCore", package: "AstroCore"),
                .product(name: "AstroCatalogKit", package: "AstroCatalogKit")
            ]
        ),
        .testTarget(name: "SkyMapKitTests", dependencies: ["SkyMapKit"])
    ]
)
