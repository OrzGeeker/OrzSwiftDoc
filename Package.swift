// swift-tools-version: 6.0
import PackageDescription
let name = "OrzSwiftDoc"
let package = Package(
    name: name,
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin.git", from: "1.4.2")
    ],
    targets: [
        .target(name: name, path: "Sources/Documentation"),
    ]
)
