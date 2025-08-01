// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "CrowdConnectedIPS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "CrowdConnectedIPS",
                 targets: ["CrowdConnectedIPS"])
    ],
    dependencies: [
        .package(url: "https://github.com/kin2025cc/crowdconnected-shared-ios.git",
                 exact: "2.1.3-beta.9")
    ],
    targets: [
        .binaryTarget(name: "CrowdConnectedIPS",
                      path: "CrowdConnectedIPS.xcframework")
    ]
)
