// swift-tools-version:5.1

let package = Package(
    name: "Gooey",
    products: [
        .library(name: "Gooey", targets: ["Gooey"]),
    ],
    targets: [
        .target(
            name: "Gooey",
            dependencies: []),
        .testTarget(
            name: "GooeyTests",
            dependencies: ["Gooey"]),
    ]
)
