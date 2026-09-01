// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13), .macOS(.v11), .watchOS("10.0")],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WalletCore",
            targets: ["TrustWalletCore"]),
        .library(
            name: "WalletCoreSwiftProtobuf",
            targets: ["WalletCoreSwiftProtobuf"])
    ],
    targets: [
        .binaryTarget(
            name: "TrustWalletCore",
            path: "Frameworks/TrustWalletCore.xcframework"
        ),
        .binaryTarget(
            name: "WalletCoreSwiftProtobuf",
            path: "Frameworks/WalletCoreSwiftProtobuf.xcframework"
        )
        
    ]
)
