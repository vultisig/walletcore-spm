// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "walletcore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "walletcore",
            targets: ["TrustWalletCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "TrustWalletCore",
            path: "Frameworks/TrustWalletCore.xcframework"
        )
    ]
)
