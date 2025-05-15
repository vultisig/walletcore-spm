// swift-tools-version:5.3
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
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.29.0"),
    ],
    targets: [
        .binaryTarget(
            name: "TrustWalletCore",
            url: "https://api.vultisig.com/TrustWalletCore.xcframework-v4.3.3.zip",
            checksum: "45c90f32409b62ddac03a6c74bb8701cab8e7a5c63e55322203c2681dbc515a2"
        )
    ]
)
