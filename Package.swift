// swift-tools-version:5.9
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
        .package(url: "https://github.com/crowdconnected/crowdconnected-shared-ios.git",
                 from: "2.0.0")
    ],
    targets: [
        .binaryTarget(name: "CrowdConnectedIPS",
                      path: "CrowdConnectedIPS.xcframework")
    ]
)
