// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "rhwood.github.io",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "rhwood.github.io",
            targets: ["rhwood.github.io"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0")
    ],
    targets: [
        .executableTarget(
            name: "rhwood.github.io",
            dependencies: ["Publish"]
        )
    ]
)
