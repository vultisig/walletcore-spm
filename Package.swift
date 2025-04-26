// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WalletCore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WalletCoreCommon",
            targets: ["WalletCoreCommon"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.26.0"),
    ],
    targets: [
        .binaryTarget(
            name: "WalletCoreCommon",
            path: "Frameworks/WalletCoreCommon.xcframework"
        )
    ]
)
