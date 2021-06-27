// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "CrowdConnectedIPS",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "CrowdConnectedIPS",
            targets: ["CrowdConnectedIPSTarget"])
    ],
    dependencies: [
        .package(name: "CrowdConnectedShared",
                 url: "https://github.com/crowdconnected/crowdconnected-shared-ios.git", 
                 from: "1.0.0"),
    ],
    targets: [
        .target(name: "CrowdConnectedIPSTarget",
                dependencies: [.target(name: "CrowdConnectedIPSWrapper")],
                path: "CrowdConnectedIPSWrapper"
        ),
        .target(
            name: "CrowdConnectedIPSWrapper",
            dependencies: [
                .target(name: "CrowdConnectedIPS"),
                .product(name: "CrowdConnectedShared", package: "CrowdConnectedShared")
            ],
            path: "CrowdConnectedIPSWrapper",
        ),
        .binaryTarget(
            name: "CrowdConnectedIPS",
            path: "CrowdConnectedIPS.xcframework"
        )
    ]
)
