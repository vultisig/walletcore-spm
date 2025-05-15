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
            url: "https://api.vultisig.com/TrustWalletCore.xcframework-v4.3.3-1.zip",
            checksum: "7c371b2dbd730033e8d19e7b81769916698f44f09be66d48c14f2034ad7cd461"
        )
    ]
)
