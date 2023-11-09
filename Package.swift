// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/breez/breez-sdk-swift/releases/download/0.2.9/breez_sdkFFI.xcframework.zip", checksum: "e695a1987f2094022d36d2888d119bae666ecacf87c3edd6e3be422c4757abf3"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
