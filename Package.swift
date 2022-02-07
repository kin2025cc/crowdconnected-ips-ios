// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "CrowdConnectedIPS",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "CrowdConnectedIPS",
                 targets: ["CrowdConnectedIPS"])
    ],
    dependencies: [
        .package(name: "CrowdConnectedShared",
                 url: "https://github.com/crowdconnected/crowdconnected-shared-ios.git", 
                 from: "1.2.0")
    ],
    targets: [
        .binaryTarget(name: "CrowdConnectedIPS",
                      path: "CrowdConnectedIPS.xcframework")
    ]
)
