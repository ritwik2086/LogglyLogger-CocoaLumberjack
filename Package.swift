// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LogglyLogger-CocoaLumberjack",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "LogglyLogger",
            targets: ["LogglyLogger"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git",
            from: "3.8.0"
        ),
    ],
    targets: [
        .target(
            name: "LogglyLogger",
            dependencies: [
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
            ],
            path: "LogglyLogger-CocoaLumberjack",
            publicHeadersPath: "."
        ),
    ]
)
