// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RIBs",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "RIBs", targets: ["RIBs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .revision("61e9cff0613854430cbd252f66883b1f4fb0892d")),
    ],
    targets: [
        .target(
            name: "RIBs",
            dependencies: ["RxSwift", "RxRelay"],
            path: "ios/RIBs"
        ),
        .testTarget(
            name: "RIBsTests",
            dependencies: ["RIBs"],
            path: "ios/RIBsTests"
        ),
    ]
)
