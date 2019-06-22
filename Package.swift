// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Gooey",
    platforms: [
        .iOS("11.2"),
    ],
    products: [
        .library(name: "Gooey", targets: ["Gooey"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "8.0.0")),
    ],
    targets: [
        .target(name: "Gooey", dependencies: [], path: "Gooey/Sources"),
        .testTarget(name: "GooeyTests", dependencies: ["Gooey", "Quick", "Nimble"], path: "GooeyTests"),
    ]
)
